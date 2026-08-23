#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/ggml-org/llama.cpp"
REPO_DIR="llama.cpp"
README_FILE="README-todo-counts.md"
DATA_FILE="todo-counts.csv"
PLOT_FILE="todo-counts.png"

# Markers to count (must follow a comment prefix: // # /* * ;)
MARKERS=(TODO FIXME XXX HACK)

# Top-level directories to break down (everything else goes to "other")
DIRS=(ggml src common tools tests examples)

# Excluded files (docs, CI config, assets).
# Note: *.txt is filtered in awk, keeping CMakeLists.txt.
EXCLUDE_GLOBS=(
    "*.md"
    "*.rst"
    "*.yml"
    "*.yaml"
    "*.json"
    "*.lock"
)

# Excluded directories (vendored/generated code)
EXCLUDE_DIRS=(
    ".git"
    "build"
    "vendor"
    "vendors"
    "3rdparty"
)

# --- Clone or update repo ---
if [ ! -d "$REPO_DIR" ]; then
    echo "Cloning llama.cpp (shallow) ..."
    git clone --depth=1 --no-tags "$REPO_URL" "$REPO_DIR"
else
    echo "Updating llama.cpp ..."
    git -C "$REPO_DIR" fetch --depth=1 origin master
    git -C "$REPO_DIR" reset --hard FETCH_HEAD
fi

COMMIT=$(git -C "$REPO_DIR" log -1 --format='%h')
SUBJECT=$(git -C "$REPO_DIR" log -1 --format='%s')
REPO="https://github.com/ggml-org/llama.cpp"

echo "Counting comment markers at commit $COMMIT ($SUBJECT)"

# --- Collect matches: one line per occurrence, "path:match" ---
MATCHES_FILE=$(mktemp)
LIST_FILE=$(mktemp)
AGG_FILE=$(mktemp)
trap 'rm -f "$MATCHES_FILE" "$LIST_FILE" "$AGG_FILE"' EXIT

grep_args=()
for g in "${EXCLUDE_GLOBS[@]}"; do grep_args+=(--exclude="$g"); done
for d in "${EXCLUDE_DIRS[@]}"; do grep_args+=(--exclude-dir="$d"); done

# Comment prefix, optional spaces, marker, then space/colon/EOL
PATTERN='(//|#|/\*|\*|;)[[:space:]]*(TODO|FIXME|XXX|HACK)([[:space:]]|:|$)'

grep -rIoE "$PATTERN" "${grep_args[@]}" "$REPO_DIR" > "$MATCHES_FILE" || true
echo "Found $(wc -l < "$MATCHES_FILE" | tr -d ' ') marker occurrences."

# Full-line listing for the README appendix ("path:line:content")
grep -rInE "$PATTERN" "${grep_args[@]}" "$REPO_DIR" > "$LIST_FILE" || true

# --- Aggregate: per dir/marker matrix + per-file counts ---
# Output lines:
#   D|<dir>|<marker>|<count>
#   F|<dir>|<count>|<relpath>
#   T|<total>
awk -v markers="${MARKERS[*]}" -v dirs="${DIRS[*]}" '
BEGIN {
    n_markers = split(markers, marker_list, " ")
    n_dirs = split(dirs, dir_list, " ")
    for (i = 1; i <= n_dirs; i++) is_dir[dir_list[i]] = 1
}
{
    p = index($0, ":")
    if (p == 0) next
    file = substr($0, 1, p - 1)
    m = substr($0, p + 1)

    rel = file
    sub("^llama.cpp/", "", rel)

    # Skip text files that are not CMake
    base = rel
    sub(".*/", "", base)
    if (base ~ /\.txt$/ && base != "CMakeLists.txt") next

    n = split(rel, parts, "/")
    dir = "other"
    if (n > 1 && (parts[1] in is_dir)) dir = parts[1]

    marker = ""
    for (i = 1; i <= n_markers; i++) {
        if (index(m, marker_list[i]) > 0) { marker = marker_list[i]; break }
    }
    if (marker == "") next

    total++
    dir_total[dir]++
    dir_marker[dir, marker]++
    file_count[rel]++
    file_dir[rel] = dir
}
END {
    for (d in dir_total)
        for (i = 1; i <= n_markers; i++)
            printf "D|%s|%s|%d\n", d, marker_list[i], dir_marker[d, marker_list[i]] + 0
    for (f in file_count)
        printf "F|%s|%d|%s\n", file_dir[f], file_count[f], f
    printf "T|%d\n", total + 0
}' "$MATCHES_FILE" > "$AGG_FILE"

GRAND_TOTAL=$(awk -F'|' '$1 == "T" { print $2; exit }' "$AGG_FILE")
FILES_WITH_MATCHES=$(grep -c '^F|' "$AGG_FILE" || true)

# --- Totals per dir and per marker ---
# bash 3.2 compatible: no associative arrays, use eval'd variables
# Matrix cells: MATRIX_<dir>_<marker>
while IFS='|' read -r tag dir marker count; do
    eval "MATRIX_${dir}_${marker}=\$count"
done < <(grep '^D|' "$AGG_FILE" || true)

for d in "${DIRS[@]}" other; do
    t=0
    for m in "${MARKERS[@]}"; do
        eval "c=\${MATRIX_${d}_${m}:-0}"
        t=$(( t + c ))
    done
    eval "DIR_TOTAL_${d}=\$t"
done

for m in "${MARKERS[@]}"; do
    t=0
    for d in "${DIRS[@]}" other; do
        eval "c=\${MATRIX_${d}_${m}:-0}"
        t=$(( t + c ))
    done
    eval "MARKER_TOTAL_${m}=\$t"
done

# --- Record data for historical tracking ---
echo "Recording data to $DATA_FILE ..."

if [ ! -f "$DATA_FILE" ]; then
    echo "commit,timestamp,total,ggml,src,common,tools,tests,examples,other" > "$DATA_FILE"
fi
echo "$COMMIT,$(date +%s),$GRAND_TOTAL,${DIR_TOTAL_ggml},${DIR_TOTAL_src},${DIR_TOTAL_common},${DIR_TOTAL_tools},${DIR_TOTAL_tests},${DIR_TOTAL_examples},${DIR_TOTAL_other}" >> "$DATA_FILE"

# --- Generate plot ---
echo "Generating $PLOT_FILE ..."

if command -v gnuplot >/dev/null 2>&1; then
    GNUPLOT_SCRIPT=$(mktemp)
    trap 'rm -f "$MATCHES_FILE" "$LIST_FILE" "$AGG_FILE" "$GNUPLOT_SCRIPT"' EXIT

    cat > "$GNUPLOT_SCRIPT" << GNUEOF
set terminal png size 800,400 enhanced
set output "$PLOT_FILE"
set title "TODO/FIXME Comment Counts by Directory"
set ylabel "Count"
set xlabel "Commit"
set grid
set key outside right
set xtics rotate by -45
set style data linespoints
set datafile separator ","
plot \\
    '$DATA_FILE' skip 1 using 0:(\$3):xtic(stringcolumn(1)) title 'total' with linespoints, \\
    '$DATA_FILE' skip 1 using 0:(\$4) title 'ggml' with linespoints, \\
    '$DATA_FILE' skip 1 using 0:(\$5) title 'src' with linespoints, \\
    '$DATA_FILE' skip 1 using 0:(\$6) title 'common' with linespoints, \\
    '$DATA_FILE' skip 1 using 0:(\$7) title 'tools' with linespoints, \\
    '$DATA_FILE' skip 1 using 0:(\$8) title 'tests' with linespoints, \\
    '$DATA_FILE' skip 1 using 0:(\$9) title 'examples' with linespoints, \\
    '$DATA_FILE' skip 1 using 0:(\$10) title 'other' with linespoints
GNUEOF

    gnuplot "$GNUPLOT_SCRIPT" 2>/dev/null && echo "Plot generated: $PLOT_FILE"
else
    echo "Warning: gnuplot not found. Skipping plot generation."
fi

# --- Generate README ---
echo "Generating $README_FILE ..."

{
    echo "# llama.cpp TODO Comments"
    echo ""
    echo "Auto-generated on $(date -u '+%Y-%m-%d %H:%M:%S UTC')"
    echo ""
    echo "## Configuration"
    echo ""
    echo "- **Commit:** [$COMMIT]($REPO/commit/$COMMIT) ($SUBJECT)"
    echo "- **Markers counted:** ${MARKERS[*]}"
    echo "- **Excluded:** vendored code (\`vendor/\`, \`vendors/\`, \`3rdparty/\`), docs (\`*.md\`, \`*.rst\`), CI config (\`*.yml\`, \`*.yaml\`), assets (\`*.json\`, \`*.lock\`), text files except \`CMakeLists.txt\`"
    echo "- **Total:** $GRAND_TOTAL in $FILES_WITH_MATCHES files"
    echo ""
    echo "## TODO Counts Over Commits"
    echo ""
    if [ -f "$PLOT_FILE" ]; then
        echo "![]($PLOT_FILE)"
    else
        echo "Plot not available (gnuplot not installed)."
    fi
    echo ""
    echo "## Totals by Directory"
    echo ""
    echo "| Directory | ${MARKERS[*]} | Total |"
    sep="|-----------|"
    for m in "${MARKERS[@]}"; do sep="$sep ---|"; done
    echo "$sep ------|"
    for d in "${DIRS[@]}" other; do
        label="[$d/]($REPO/tree/$COMMIT/$d)"
        [ "$d" = "other" ] && label="other"
        row="| $label |"
        for m in "${MARKERS[@]}"; do
            eval "c=\${MATRIX_${d}_${m}:-0}"
            row="$row $c |"
        done
        eval "t=\${DIR_TOTAL_${d}}"
        echo "$row $t |"
    done
    row="| **Total** |"
    for m in "${MARKERS[@]}"; do
        eval "c=\${MARKER_TOTAL_${m}}"
        row="$row $c |"
    done
    echo "$row $GRAND_TOTAL |"
    echo ""
    echo "## TODOs by Directory"
    echo ""
    for d in "${DIRS[@]}" other; do
        echo "### $d"
        echo ""
        echo "| Count | File |"
        echo "|-------|------|"
        (grep "^F|$d|" "$AGG_FILE" || true) | sort -t'|' -k3,3rn -k4,4 | while IFS='|' read -r tag dir count relpath; do
            echo "| $count | [$relpath]($REPO/blob/$COMMIT/$relpath) |"
        done
        echo ""
    done
    echo "## All TODO Instances"
    echo ""
    echo '```'
    sed 's|^llama\.cpp/||' "$LIST_FILE" | awk -F: '
    { f = $1; n = split(f, p, "/"); b = p[n]
      if (b ~ /\.txt$/ && b != "CMakeLists.txt") next
      print }' | sort -t: -k1,1 -k2,2n
    echo '```'
    echo ""
} > "$README_FILE"

echo "Done. Output written to $README_FILE"
