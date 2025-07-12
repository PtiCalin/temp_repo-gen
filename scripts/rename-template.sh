#!/usr/bin/env bash
set -euo pipefail

template_name="temp_repo-gen"
new_name=${1?"Usage: $0 new-repo-name"}

files_to_update=(README.md CONTRIBUTING.md package.json)
for file in "${files_to_update[@]}"; do
  if [ -f "$file" ]; then
    sed -i "s/$template_name/$new_name/g" "$file"
  fi
done

rm -f scripts/rename-template.sh
