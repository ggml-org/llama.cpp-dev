#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/ggml-org/llama.cpp"
BARE_DIR=".llama.cpp-bare"
OUTPUT_FILE="branches.txt"
README_FILE="README.md"

# --- Setup bare clone ---
if [ ! -d "$BARE_DIR" ]; then
    echo "Cloning bare repo into $BARE_DIR ..."
    git clone --bare --filter=tree:0 --no-tags "$REPO_URL" "$BARE_DIR"
    git -C "$BARE_DIR" config remote.origin.fetch '+refs/heads/*:refs/heads/*'
else
    echo "Updating bare repo in $BARE_DIR ..."
    git -C "$BARE_DIR" remote update --prune
fi

# --- Collect target branches ---
branches=()

# Always include master
branches+=("master")

# Include all dev-* branches
while IFS= read -r ref; do
    branch="${ref#refs/heads/}"
    branches+=("$branch")
done < <(git -C "$BARE_DIR" for-each-ref --format='%(refname)' refs/heads/ | grep '^refs/heads/dev-')

if [ ${#branches[@]} -eq 1 ]; then
    echo "No dev-* branches found. Only master exists."
fi

echo "Found ${#branches[@]} branches: ${branches[*]}"

# --- Find common ancestor across all branches ---
common_base="${branches[0]}"
for (( i=1; i<${#branches[@]}; i++ )); do
    common_base=$(git -C "$BARE_DIR" merge-base "$common_base" "${branches[$i]}")
done

echo "Common ancestor: $common_base"

# --- Generate output ---
{
    echo "=== Branch Analysis ==="
    echo "Repo: $REPO_URL"
    echo "Common ancestor: $common_base"
    echo "Branches analyzed: ${#branches[@]}"
    echo ""

    for branch in "${branches[@]}"; do
        tip=$(git -C "$BARE_DIR" rev-parse "refs/heads/$branch")
        count=$(git -C "$BARE_DIR" rev-list --count "$common_base..$branch")
        echo "--- $branch (tip: $tip, commits from ancestor: $count) ---"
        git -C "$BARE_DIR" log --format="%h %s" "$common_base..$branch"
        echo ""
    done
} > "$OUTPUT_FILE"

echo "Output written to $OUTPUT_FILE"

# --- Extract PR number from commit subject ---
extract_pr() {
    local subject="$1"
    if [[ "$subject" =~ \(#([0-9]+)\) ]]; then
        echo "${BASH_REMATCH[1]}"
    fi
}

# --- Generate README with mermaid diagram ---
# Precompute common ancestor info
common_short=$(git -C "$BARE_DIR" log -1 --format="%h" "$common_base")
common_pr=$(extract_pr "$(git -C "$BARE_DIR" log -1 --format="%s" "$common_base")")

{
    echo "# llama.cpp - feature development info"
    echo ""
    echo "Auto-generated on $(date -u '+%Y-%m-%d %H:%M:%S UTC')"
    echo ""
    echo "**Repo:** $REPO_URL"
    echo ""
    echo "**Common ancestor:** [${common_short}](${REPO_URL}/commit/${common_base})"
    echo ""
    echo "**Branches:** ${#branches[@]}"
    echo ""
    echo "## Branch Diagram"
    echo ""
    echo '```mermaid'
    echo "graph BT"

    # Track already-emitted commit nodes to avoid duplicates
    emitted="COMMON"

    # Common ancestor node
    common_label="$common_short"
    if [ -n "$common_pr" ]; then
        common_label="$common_label #${common_pr}"
    fi
    common_subject=$(git -C "$BARE_DIR" log -1 --format="%s" "$common_base")
    common_subject=$(printf '%s' "$common_subject" | sed "s/\"/'/g")  # replace \" with ' for mermaid safety
    if [ -n "$common_pr" ]; then
        common_link="<a href='${REPO_URL}/pull/${common_pr}'>#${common_pr}</a>"
    else
        common_link="<a href='${REPO_URL}/commit/${common_base}'>${common_short}</a>"
    fi
    echo "    COMMON[\"${common_link}<br/><span style='font-size:smaller;color:gray'>${common_subject}</span>\"]"

    for branch in "${branches[@]}"; do
        # Determine the base: master uses global ancestor, dev-* uses merge-base with master
        if [ "$branch" = "master" ]; then
            branch_base="$common_base"
            base_node="COMMON"
        else
            branch_base=$(git -C "$BARE_DIR" merge-base "$branch" master)
            if [ "$branch_base" = "$common_base" ]; then
                base_node="COMMON"
            else
                base_short=$(git -C "$BARE_DIR" log -1 --format="%h" "$branch_base")
                base_node="C_${base_short}"
            fi
        fi

        commits=()
        while IFS= read -r line; do
            [ -n "$line" ] && commits+=("$line")
        done < <(git -C "$BARE_DIR" log --format="%h %s" "$branch_base..$branch")
        count=${#commits[@]}

        if [ "$count" -eq 0 ]; then
            # Branch has no unique commits
            echo "    ${base_node} -->|${branch}| none"
            continue
        fi

        # Reverse commits: oldest first (closest to base)
        reversed=()
        for (( i=count-1; i>=0; i-- )); do
            reversed+=("${commits[$i]}")
        done

        # Link base to oldest unique commit
        first_hash="${reversed[0]%% *}"
        echo "    ${base_node} -->|${branch}| C_${first_hash}"

        for (( i=0; i<count; i++ )); do
            hash="${reversed[$i]%% *}"
            subject="${reversed[$i]#* }"
            pr=$(extract_pr "$subject")

            if [ -n "$pr" ]; then
                label="<a href='${REPO_URL}/pull/${pr}'>#${pr}</a>"
            else
                label="<a href='${REPO_URL}/commit/${hash}'>${hash}</a>"
            fi
            if ! echo " $emitted " | grep -q " $hash "; then
                subject_escaped=$(printf '%s' "$subject" | sed "s/\"/'/g")  # replace \" with ' for mermaid safety
                echo "    C_${hash}[\"${label}<br/><span style='font-size:smaller;color:gray'>${subject_escaped}</span>\"]"
                emitted="$emitted $hash"
            fi

            # Chain to next (newer) commit
            if [ $((i + 1)) -lt "$count" ]; then
                next_hash="${reversed[$((i + 1))]%% *}"
                echo "    C_${hash} --> C_${next_hash}"
            fi
        done
    done

    echo '```'
} > "$README_FILE"

echo "README written to $README_FILE"
