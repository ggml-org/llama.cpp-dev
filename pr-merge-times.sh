#!/usr/bin/env bash
set -euo pipefail

REPO="ggml-org/llama.cpp"
README_FILE="README-pr-merge-times.md"
DATA_FILE="pr-merge-times.csv"
PLOT_FILE="pr-merge-times.png"

# Number of weeks to fetch. Also the window used to detect maintainers.
WEEKS=${WEEKS:-26}

# Window for the headline stats and the PR listing
RECENT_DAYS=${RECENT_DAYS:-30}

# Maintainers excluded from the stats (GitHub logins)
# ref: https://github.com/ggml-org/llama.cpp-dev/pull/3#issuecomment-6386544204
EXCLUDE_AUTHORS=(
    "ggerganov"
    "CISC"
    "ngxson"
)

# Requires an authenticated gh (GH_TOKEN in CI)
if ! command -v gh >/dev/null 2>&1 || ! command -v jq >/dev/null 2>&1; then
    echo "Error: gh and jq are required."
    exit 1
fi

PRS_FILE=$(mktemp)
AGG_FILE=$(mktemp)
trap 'rm -f "$PRS_FILE" "$AGG_FILE"' EXIT

# For each merged PR: author, merger, and the draft <-> ready transitions.
# A PR whose first transition is "ready for review" was opened as a draft.
QUERY='
query($q: String!, $endCursor: String) {
  search(query: $q, type: ISSUE, first: 100, after: $endCursor) {
    pageInfo { hasNextPage endCursor }
    nodes {
      ... on PullRequest {
        number
        title
        author { login }
        mergedBy { login }
        createdAt
        mergedAt
        timelineItems(itemTypes: [READY_FOR_REVIEW_EVENT, CONVERT_TO_DRAFT_EVENT], first: 20) {
          nodes {
            __typename
            ... on ReadyForReviewEvent { createdAt }
            ... on ConvertToDraftEvent { createdAt }
          }
        }
      }
    }
  }
}'

# Output: one JSON object per PR, times in seconds since epoch.
# open: time from creation to merge, excluding the time spent as a draft.
JQ_PR='
.data.search.nodes[] | select(.number != null) |
(.mergedAt | fromdateiso8601) as $merged |
(.timelineItems.nodes | map({t: (.createdAt | fromdateiso8601), ready: (.__typename == "ReadyForReviewEvent")})) as $ev |
([{t: (.createdAt | fromdateiso8601), ready: (($ev[0].ready // false) | not)}] + $ev + [{t: $merged}]) as $s |
{
    number,
    title,
    author: (.author.login // "ghost"),
    merged_by: (.mergedBy.login // ""),
    open: ([range(0; ($s | length) - 1) | select($s[.].ready) | $s[. + 1].t - $s[.].t] | add // 0),
    merged: $merged
}'

# --- Fetch merged PRs, one search per week (search results are capped at 1000) ---
NOW=$(date +%s)
# Monday 00:00 UTC of the current week (1970-01-01 was a Thursday)
WEEK0=$(( NOW - NOW % 86400 - (NOW / 86400 + 3) % 7 * 86400 ))
FIRST_WEEK=$(( WEEK0 - (WEEKS - 1) * 604800 ))

echo "Fetching PRs merged into $REPO master over the last $WEEKS weeks ..."

for (( w=FIRST_WEEK; w<=WEEK0; w+=604800 )); do
    from=$(jq -rn --argjson t "$w" '$t | todate')
    to=$(jq -rn --argjson t "$(( w + 604800 ))" '$t | todate')
    gh api graphql --paginate \
        -f query="$QUERY" \
        -f q="repo:$REPO is:pr is:merged base:master merged:$from..$to" \
        --jq "$JQ_PR" >> "$PRS_FILE"
    echo "  week of ${from%%T*}: $(wc -l < "$PRS_FILE" | tr -d ' ') PRs total"
done

# --- Aggregate ---
# Maintainers: users who merged at least one PR in the fetched window,
# minus EXCLUDE_AUTHORS.
# Output lines:
#   M|<login>
#   W|<week>|<prs>|<mean_h>|<median_h>
#   R|<prs>|<mean_h>|<median_h>
#   P|<hours>|<number>|<author>|<title>
EXCLUDE_JSON=$(jq -cn '$ARGS.positional' --args "${EXCLUDE_AUTHORS[@]}")

jq -rs --argjson first_week "$FIRST_WEEK" --argjson since "$(( NOW - RECENT_DAYS * 86400 ))" --argjson exclude "$EXCLUDE_JSON" '
def hours: .open / 3600;
def stats: map(hours) | sort | {
    n: length,
    mean: (if length > 0 then add / length else 0 end),
    median: (if length == 0 then 0 elif length % 2 == 1 then .[length / 2 | floor] else (.[length / 2 - 1] + .[length / 2]) / 2 end)
};
# One decimal, e.g. "12.0"
def r1: . * 10 | round | "\(. / 10 | floor).\(. % 10)";
# Monday 00:00 UTC of the week (1970-01-01 was a Thursday)
def week: . - . % 86400 - ((. / 86400 | floor) + 3) % 7 * 86400;

unique_by(.number) | map(select(.merged >= $first_week)) |
($exclude | map({(.): true}) | add // {}) as $x |
(map(select(.merged_by != "" and ($x[.merged_by] | not)) | {(.merged_by): true}) | add // {}) as $m |
map(select($m[.author])) as $prs |
($m | keys_unsorted | sort_by(ascii_downcase) | .[] | "M|\(.)"),
($prs | group_by(.merged | week)[] |
    (.[0].merged | week | strftime("%Y-%m-%d")) as $w |
    stats | "W|\($w)|\(.n)|\(.mean | r1)|\(.median | r1)"),
($prs | map(select(.merged >= $since)) |
    (stats | "R|\(.n)|\(.mean | r1)|\(.median | r1)"),
    (sort_by(-hours)[] | "P|\(hours | r1)|\(.number)|\(.author)|\(.title | gsub("\\|"; "\\|"))"))
' "$PRS_FILE" > "$AGG_FILE"

N_MAINTAINERS=$(grep -c '^M|' "$AGG_FILE" || true)
IFS='|' read -r _ RECENT_PRS RECENT_MEAN RECENT_MEDIAN < <(grep '^R|' "$AGG_FILE")

echo "Maintainers: $N_MAINTAINERS"
echo "Last $RECENT_DAYS days: $RECENT_PRS maintainer PRs, mean $RECENT_MEAN h, median $RECENT_MEDIAN h"

# --- Record data (recomputed from GitHub on every run) ---
echo "Writing $DATA_FILE ..."

{
    echo "week,prs,mean_hours,median_hours"
    grep '^W|' "$AGG_FILE" | cut -d'|' -f2- | tr '|' ','
} > "$DATA_FILE"

# --- Generate plot ---
echo "Generating $PLOT_FILE ..."

if command -v gnuplot >/dev/null 2>&1; then
    GNUPLOT_SCRIPT=$(mktemp)
    trap 'rm -f "$PRS_FILE" "$AGG_FILE" "$GNUPLOT_SCRIPT"' EXIT

    cat > "$GNUPLOT_SCRIPT" << GNUEOF
set terminal png size 800,400 enhanced
set output "$PLOT_FILE"
set title "Maintainer PR Time to Merge by Week"
set ylabel "Time (h)"
set xlabel "Week"
set grid
set key outside right
set xdata time
set timefmt "%Y-%m-%d"
set format x "%m-%d"
set xtics rotate by -45
set style data linespoints
set datafile separator ","
plot \\
    '$DATA_FILE' skip 1 using 1:3 title 'mean' with linespoints, \\
    '$DATA_FILE' skip 1 using 1:4 title 'median' with linespoints
GNUEOF

    gnuplot "$GNUPLOT_SCRIPT" 2>/dev/null && echo "Plot generated: $PLOT_FILE"
else
    echo "Warning: gnuplot not found. Skipping plot generation."
fi

# --- Generate README ---
echo "Generating $README_FILE ..."

{
    echo "# llama.cpp Maintainer PR Merge Times"
    echo ""
    echo "Auto-generated on $(date -u '+%Y-%m-%d %H:%M:%S UTC')"
    echo ""
    echo "## Configuration"
    echo ""
    echo "- **PRs:** merged into \`master\` of [$REPO](https://github.com/$REPO), authored by a maintainer"
    echo "- **Maintainers:** users who merged at least one PR in the last $WEEKS weeks ($N_MAINTAINERS)"
    echo "- **Excluded maintainers:** ${EXCLUDE_AUTHORS[*]}"
    echo "- **Time to merge:** from opening until merged, excluding the time spent as a draft"
    echo "- **Mean time to merge (last $RECENT_DAYS days):** ${RECENT_MEAN}h over $RECENT_PRS PRs (median ${RECENT_MEDIAN}h)"
    echo ""
    echo "## Time to Merge Over Weeks"
    echo ""
    if [ -f "$PLOT_FILE" ]; then
        echo "![]($PLOT_FILE)"
    else
        echo "Plot not available (gnuplot not installed)."
    fi
    echo ""
    echo "## Weekly Stats"
    echo ""
    echo "Weeks start on Monday (UTC). The last week is in progress."
    echo ""
    echo "| Week | PRs | Mean | Median |"
    echo "|------|-----|------|--------|"
    grep '^W|' "$AGG_FILE" | sort -t'|' -k2,2r | while IFS='|' read -r _ week prs mean median; do
        echo "| $week | $prs | ${mean}h | ${median}h |"
    done
    echo ""
    echo "## Maintainer PRs Merged in the Last $RECENT_DAYS Days"
    echo ""
    echo "| Time to merge | PR | Author |"
    echo "|---------------|----|--------|"
    grep '^P|' "$AGG_FILE" | while IFS='|' read -r _ hours number author title; do
        echo "| ${hours}h | [#$number](https://github.com/$REPO/pull/$number) $title | $author |"
    done
    echo ""
    echo "## Maintainers"
    echo ""
    grep '^M|' "$AGG_FILE" | cut -d'|' -f2 | while read -r login; do
        echo "- [$login](https://github.com/$login)"
    done
    echo ""
} > "$README_FILE"

echo "Done. Output written to $README_FILE"
