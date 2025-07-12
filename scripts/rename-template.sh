#!/usr/bin/env bash
# ───────────────────────────────────────────────────────────────
# 📝 Rename Template Script
# Replaces template placeholder names with your project name.
# 🧠 Usage: ./scripts/rename-template.sh <new-repo-name>
# ───────────────────────────────────────────────────────────────
set -euo pipefail

template_name="temp_repo-gen"
new_name=${1?"Usage: $0 new-repo-name"}

files_to_update=(README.md CONTRIBUTING.md package.json)
for file in "${files_to_update[@]}"; do
  [ -f "$file" ] && sed -i "s/$template_name/$new_name/g" "$file"
done

rm -f "$0"
