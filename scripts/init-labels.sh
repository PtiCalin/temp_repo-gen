#!/usr/bin/env bash
set -euo pipefail

if ! command -v gh &>/dev/null; then
  echo "gh CLI is required" >&2
  exit 1
fi

labels_file=".github/labels.yml"

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
