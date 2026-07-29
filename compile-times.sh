#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/ggml-org/llama.cpp"
BUILD_DIR="build"
README_FILE="README-compile-times.md"
DATA_FILE="compile-times.csv"
PLOT_FILE="compile-times.png"

# Limit per directory for faster iteration (set high to measure all)
LIMIT_PER_DIR=99999

# Files to skip (basename match)
IGNORE_FILES=(
    "build-info.cpp"
    "ui.cpp"
)

# --- Clone repo ---
if [ ! -d "llama.cpp" ]; then
    echo "Cloning llama.cpp ..."
    git clone --filter=tree:0 --depth=1 "$REPO_URL"
else
    echo "llama.cpp directory already exists. Skipping clone."
fi

# --- Configure ---
echo "Configuring cmake ..."
rm -rf "$BUILD_DIR"
cmake -B "$BUILD_DIR" -S llama.cpp \
    -DGGML_CCACHE=OFF \
    -DGGML_METAL=OFF \
    -DLLAMA_BUILD_TESTS=ON \
    -DLLAMA_BUILD_EXAMPLES=OFF \
    -DLLAMA_BUILD_UI=OFF \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON

# --- Measure per-file compile times ---
echo ""
echo "=== Measuring compile times ==="

COMPILE_DB="$BUILD_DIR/compile_commands.json"
if [ ! -f "$COMPILE_DB" ]; then
    echo "ERROR: compile_commands.json not found."
    exit 1
fi

# Collect results in a temp file: "time_ms|directory|filename"
RESULTS_FILE=$(mktemp)
trap "rm -f $RESULTS_FILE" EXIT

# Cumulative times per directory (in ms)
ggml_time=0
src_time=0
common_time=0
tools_time=0
tests_time=0
other_time=0

# Counters per directory
ggml_count=0
src_count=0
common_count=0
tools_count=0
tests_count=0

total_measured=0

count=$(jq length "$COMPILE_DB")
echo "Found $count compile commands (limit: $LIMIT_PER_DIR per directory)."
echo ""

for (( i=0; i<count; i++ )); do
    command=$(jq -r ".[$i].command" "$COMPILE_DB")
    file=$(jq -r ".[$i].file" "$COMPILE_DB")
    fname=$(basename "$file")

    # Check if file should be ignored
    skip=false
    for ignored in "${IGNORE_FILES[@]}"; do
        if [ "$fname" = "$ignored" ]; then
            skip=true
            break
        fi
    done
    [ "$skip" = true ] && continue

    # Relative path from llama.cpp/ for GitHub links
    relpath=${file#*llama.cpp/}

    # Determine directory category
    if [[ "$file" == *"/ggml/"* ]]; then
        dir="ggml"
        [ "$ggml_count" -ge "$LIMIT_PER_DIR" ] && continue
    elif [[ "$file" == *"/src/"* ]]; then
        dir="src"
        [ "$src_count" -ge "$LIMIT_PER_DIR" ] && continue
    elif [[ "$file" == *"/common/"* ]]; then
        dir="common"
        [ "$common_count" -ge "$LIMIT_PER_DIR" ] && continue
    elif [[ "$file" == *"/tools/"* ]]; then
        dir="tools"
        [ "$tools_count" -ge "$LIMIT_PER_DIR" ] && continue
    elif [[ "$file" == *"/tests/"* ]]; then
        dir="tests"
        [ "$tests_count" -ge "$LIMIT_PER_DIR" ] && continue
    else
        dir="other"
        continue
    fi

    # Extract output file path (-o <path>) and remove it to force real compilation
    output=$(echo "$command" | sed -n 's/.*-o \([^ ]*\).*/\1/p')
    (cd "$BUILD_DIR" && mkdir -p "$(dirname "$output")" && rm -f "$output")

    # Time the compilation in milliseconds
    start=$(date +%s%N)
    (cd "$BUILD_DIR" && eval "$command") >/dev/null 2>&1 || true
    end=$(date +%s%N)
    ms=$(( (end - start) / 1000000 ))
    # Convert to seconds with one decimal
    sec_whole=$(( ms / 1000 ))
    sec_frac=$(( (ms % 1000) / 100 ))

    echo "$ms|$dir|$fname|$relpath" >> "$RESULTS_FILE"
    total_measured=$(( total_measured + 1 ))

    # Accumulate directory time and increment counter
    case "$dir" in
        ggml)   ggml_time=$(( ggml_time + ms ));   ggml_count=$(( ggml_count + 1 )) ;;
        src)    src_time=$(( src_time + ms ));      src_count=$(( src_count + 1 )) ;;
        common) common_time=$(( common_time + ms )); common_count=$(( common_count + 1 )) ;;
        tools)  tools_time=$(( tools_time + ms ));  tools_count=$(( tools_count + 1 )) ;;
        tests)  tests_time=$(( tests_time + ms ));  tests_count=$(( tests_count + 1 )) ;;
        *)      other_time=$(( other_time + ms )) ;;
    esac

    printf "[%d] %-50s %d.%ds\n" "$total_measured" "$relpath" "$sec_whole" "$sec_frac"
done

# Helper: convert ms to "X.Ys" format
ms_to_sec() {
    local ms=$1
    local whole=$(( ms / 1000 ))
    local frac=$(( (ms % 1000) / 100 ))
    printf "%d.%ds" "$whole" "$frac"
}

# Print per-file results sorted by time (descending)
echo ""
echo "=== Compile times (sorted) ==="
printf "%-10s %s\n" "TIME" "FILE"
printf "%-10s %s\n" "----" "----"
sort -t'|' -k1 -rn "$RESULTS_FILE" | while IFS='|' read -r ms dir fname relpath; do
    printf "%-10s %s\n" "$(ms_to_sec $ms)" "$relpath"
done

# Print cumulative times per directory
echo ""
echo "=== Cumulative times by directory ==="
printf "%-10s %s\n" "TIME" "DIRECTORY"
printf "%-10s %s\n" "----" "-----------"
printf "%-10s %s/\n" "$(ms_to_sec $ggml_time)" "ggml"
printf "%-10s %s/\n" "$(ms_to_sec $src_time)" "src"
printf "%-10s %s/\n" "$(ms_to_sec $common_time)" "common"
printf "%-10s %s/\n" "$(ms_to_sec $tools_time)" "tools"
printf "%-10s %s/\n" "$(ms_to_sec $tests_time)" "tests"

# Generate README
echo ""
echo "Generating $README_FILE ..."

COMMIT=$(cd llama.cpp && git log -1 --format='%h')
REPO="https://github.com/ggml-org/llama.cpp"

{
    echo "# llama.cpp Compile Times"
    echo ""
    echo "Auto-generated on $(date -u '+%Y-%m-%d %H:%M:%S UTC')"
    echo ""
    echo "## Configuration"
    echo ""
    echo "- **Commit:** [$COMMIT]($REPO/commit/$COMMIT) ($(cd llama.cpp && git log -1 --format='%s'))"
    echo "- **CMake flags:** \`-DGGML_CCACHE=OFF -DGGML_METAL=OFF -DLLAMA_BUILD_TESTS=ON -DLLAMA_BUILD_EXAMPLES=OFF -DLLAMA_BUILD_UI=OFF\`"
    echo "- **Files measured:** $total_measured"
    if [ "$LIMIT_PER_DIR" -lt "$count" ]; then
        echo "- **Note:** Limited to $LIMIT_PER_DIR files per directory."
    fi
    echo ""
    echo "## Compile Times Over Commits"
    echo ""
    if [ -f "$PLOT_FILE" ]; then
        echo "![]($PLOT_FILE)"
    else
        echo "Plot not available (gnuplot not installed)."
    fi
    echo ""
    echo "## Cumulative Times by Directory"
    echo ""
    echo "| Directory | Time |"
    echo "|-----------|------|"
    echo "| [ggml/]($REPO/tree/$COMMIT/ggml)     | $(ms_to_sec $ggml_time)     |"
    echo "| [src/]($REPO/tree/$COMMIT/src)      | $(ms_to_sec $src_time)      |"
    echo "| [common/]($REPO/tree/$COMMIT/common)   | $(ms_to_sec $common_time)    |"
    echo "| [tools/]($REPO/tree/$COMMIT/tools)    | $(ms_to_sec $tools_time)    |"
    echo ""
    echo "## Compile Times by Directory"
    echo ""
    for dir in ggml src common tools tests; do
        echo "### $dir/"
        echo ""
        echo "| Time | File |"
        echo "|------|------|"
        grep "|$dir|" "$RESULTS_FILE" | sort -t'|' -k1 -rn | while IFS='|' read -r ms d fname relpath; do
            echo "| $(ms_to_sec $ms) | [$relpath]($REPO/blob/$COMMIT/$relpath) |"
        done
        echo ""
    done
} > "$README_FILE"

# --- Record data for historical tracking ---
echo ""
echo "Recording data to $DATA_FILE ..."

# Create data file with header if it doesn't exist
if [ ! -f "$DATA_FILE" ]; then
    echo "commit,timestamp,ggml_ms,src_ms,common_ms,tools_ms,tests_ms" > "$DATA_FILE"
fi

# Append new data
TIMESTAMP=$(date +%s)
echo "$COMMIT,$TIMESTAMP,$ggml_time,$src_time,$common_time,$tools_time,$tests_time" >> "$DATA_FILE"

# --- Generate plot ---
echo "Generating $PLOT_FILE ..."

if command -v gnuplot >/dev/null 2>&1; then
    # Create gnuplot script
    GNUPLOT_SCRIPT=$(mktemp)
    trap "rm -f $RESULTS_FILE $GNUPLOT_SCRIPT" EXIT

    cat > "$GNUPLOT_SCRIPT" << GNUEOF
set terminal png size 800,400 enhanced
set output "$PLOT_FILE"
set title "Compile Times by Directory"
set ylabel "Time (s)"
set xlabel "Commit"
set grid
set key outside right
set xtics rotate by -45
set style data linespoints
set datafile separator ","
plot \\
    '$DATA_FILE' skip 1 using 0:(\$3/1000.0):xtic(stringcolumn(1)) title 'ggml' with linespoints, \\
    '$DATA_FILE' skip 1 using 0:(\$4/1000.0) title 'src' with linespoints, \\
    '$DATA_FILE' skip 1 using 0:(\$5/1000.0) title 'common' with linespoints, \\
    '$DATA_FILE' skip 1 using 0:(\$6/1000.0) title 'tools' with linespoints, \
    '$DATA_FILE' skip 1 using 0:(\$7/1000.0) title 'tests' with linespoints
GNUEOF

    gnuplot "$GNUPLOT_SCRIPT" 2>/dev/null && echo "Plot generated: $PLOT_FILE"
else
    echo "Warning: gnuplot not found. Skipping plot generation."
fi

echo "Done. Output written to $README_FILE"
