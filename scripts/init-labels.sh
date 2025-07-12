#!/usr/bin/env bash
# ───────────────────────────────────────────────────────────────
# 🏷️  Initialize GitHub Labels
# Reads .github/labels.yml and creates labels via the gh CLI.
# 🧠 Usage: ./scripts/init-labels.sh
# Requires: gh (GitHub CLI) authenticated with repo scope.
# ───────────────────────────────────────────────────────────────
set -euo pipefail

labels_file=".github/labels.yml"

if ! command -v gh &>/dev/null; then
  echo "❌ gh CLI is required" >&2
  exit 1
fi

[ -f "$labels_file" ] || {
  echo "❌ $labels_file not found" >&2
  exit 1
}

while read -r line; do
  if [[ $line == -\ name:* ]]; then
    name=${line#*- name: }
    read -r color_line
    color=${color_line#* }
    read -r desc_line
    desc=${desc_line#* }
    gh label create "$name" --color "$color" --description "$desc" || true
  fi
done < "$labels_file"
