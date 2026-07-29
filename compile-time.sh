#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/ggml-org/llama.cpp"
BUILD_DIR="build"
README_FILE="README-compile-time.md"

# Limit per directory for faster iteration (set high to measure all)
LIMIT_PER_DIR=5

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
    -DLLAMA_BUILD_TESTS=OFF \
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
other_time=0

# Counters per directory
ggml_count=0
src_count=0
common_count=0
tools_count=0

total_measured=0

count=$(jq length "$COMPILE_DB")
echo "Found $count compile commands (limit: $LIMIT_PER_DIR per directory)."
echo ""

for (( i=0; i<count; i++ )); do
    command=$(jq -r ".[$i].command" "$COMPILE_DB")
    file=$(jq -r ".[$i].file" "$COMPILE_DB")
    fname=$(basename "$file")

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

    echo "$ms|$dir|$fname" >> "$RESULTS_FILE"
    total_measured=$(( total_measured + 1 ))

    # Accumulate directory time and increment counter
    case "$dir" in
        ggml)   ggml_time=$(( ggml_time + ms ));   ggml_count=$(( ggml_count + 1 )) ;;
        src)    src_time=$(( src_time + ms ));      src_count=$(( src_count + 1 )) ;;
        common) common_time=$(( common_time + ms )); common_count=$(( common_count + 1 )) ;;
        tools)  tools_time=$(( tools_time + ms ));  tools_count=$(( tools_count + 1 )) ;;
        *)      other_time=$(( other_time + ms )) ;;
    esac

    printf "[%d] %-40s %d ms\n" "$total_measured" "$fname" "$ms"
done

# Print per-file results sorted by time (descending)
echo ""
echo "=== Compile times (sorted) ==="
printf "%-10s %s\n" "TIME (ms)" "FILE"
printf "%-10s %s\n" "----------" "----"
sort -t'|' -k1 -rn "$RESULTS_FILE" | while IFS='|' read -r ms dir fname; do
    printf "%-10s %s\n" "$ms" "$fname"
done

# Print cumulative times per directory
echo ""
echo "=== Cumulative times by directory ==="
printf "%-10s %s\n" "TIME (ms)" "DIRECTORY"
printf "%-10s %s\n" "----------" "-----------"
printf "%-10s %s/\n" "$ggml_time" "ggml"
printf "%-10s %s/\n" "$src_time" "src"
printf "%-10s %s/\n" "$common_time" "common"
printf "%-10s %s/\n" "$tools_time" "tools"

# Generate README
echo ""
echo "Generating $README_FILE ..."

{
    echo "# llama.cpp Compile Times"
    echo ""
    echo "Auto-generated on $(date -u '+%Y-%m-%d %H:%M:%S UTC')"
    echo ""
    echo "## Configuration"
    echo ""
    echo "- **Commit:** $(cd llama.cpp && git log -1 --format='%h (%s)')"
    echo "- **CMake flags:** \`-DGGML_CCACHE=OFF -DGGML_METAL=OFF -DLLAMA_BUILD_TESTS=OFF -DLLAMA_BUILD_EXAMPLES=OFF -DLLAMA_BUILD_UI=OFF\`"
    echo "- **Files measured:** $total_measured"
    if [ "$LIMIT_PER_DIR" -lt "$count" ]; then
        echo "- **Note:** Limited to $LIMIT_PER_DIR files per directory."
    fi
    echo ""
    echo "## Cumulative Times by Directory"
    echo ""
    echo "| Directory | Time (ms) |"
    echo "|-----------|-----------|"
    echo "| ggml/     | $ggml_time     |"
    echo "| src/      | $src_time      |"
    echo "| common/   | $common_time    |"
    echo "| tools/    | $tools_time    |"
    echo ""
    echo "## Compile Times (sorted)"
    echo ""
    echo "| Time (ms) | File |"
    echo "|-----------|------|"
    sort -t'|' -k1 -rn "$RESULTS_FILE" | while IFS='|' read -r ms dir fname; do
        echo "| $ms       | $fname |"
    done
} > "$README_FILE"

echo "Done. Output written to $README_FILE"
