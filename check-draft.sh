#!/usr/bin/env bash
# Mechanical first pass for draft-review: weasel-word patterns, then spelling.
set -uo pipefail

dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
file="${1:?usage: check-draft.sh FILE}"

echo "== patterns =="
grep -v -e '^[[:space:]]*#' -e '^[[:space:]]*$' "$dir/patterns.txt" \
  | grep -ionwf - "$file"

echo
echo "== spelling =="
aspell --mode=markdown --personal="$dir/aspell-personal.txt" list < "$file" | sort -u
