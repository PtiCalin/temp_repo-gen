#!/usr/bin/env bash
set -euo pipefail

if ! command -v gh >/dev/null; then
  echo "gh CLI is required" >&2
  exit 1
fi

config=".github/project-config.json"

if [[ ! -f "$config" ]]; then
  echo "{}" > "$config"
fi

project_title=$(jq -r '.title // "Repo Project"' "$config")

# Create project and capture ID
project_json=$(gh project create --title "$project_title" --format json)
project_id=$(echo "$project_json" | jq -r '.id')

# Add default fields
gh project field-create "$project_id" --name "Status" --data-type SINGLE_SELECT > /dev/null
gh project field-create "$project_id" --name "Type" --data-type SINGLE_SELECT > /dev/null
gh project field-create "$project_id" --name "Linked Issue" --data-type ISSUE > /dev/null

# Add default views
gh project view-create "$project_id" --name "Board" --layout BOARD > /dev/null
gh project view-create "$project_id" --name "Table" --layout TABLE > /dev/null

echo "Project $project_title created with ID $project_id"
