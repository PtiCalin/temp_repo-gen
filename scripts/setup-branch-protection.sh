#!/usr/bin/env bash
# Apply branch protection rules using GitHub CLI
# Requires: gh CLI authenticated with repo scope

set -euo pipefail

if ! command -v gh &>/dev/null; then
  echo "gh CLI is required" >&2
  exit 1
fi

OWNER_REPO=$(gh repo view --json nameWithOwner -q .nameWithOwner)
BRANCH="main"

# JSON payload for the branch protection API
read -r -d '' PAYLOAD <<JSON
{
  "required_status_checks": {
    "strict": true,
    "contexts": ["lint", "test", "build"]
  },
  "enforce_admins": false,
  "required_pull_request_reviews": {
    "required_approving_review_count": 1
  },
  "required_linear_history": true,
  "allow_force_pushes": false,
  "allow_deletions": false,
  "bypass_pull_request_allowances": {
    "apps": ["dependabot"],
    "users": []
  }
}
JSON

# Apply protection
gh api -X PUT "repos/$OWNER_REPO/branches/$BRANCH/protection" --input - <<<"$PAYLOAD"

echo "Branch protection applied to $BRANCH"

