#!/usr/bin/env bash

# ───────────────────────────────────────────────────────────────
# 🌿 PtiCalin Repo Protection Script
# 🛡️  Applies GitHub Branch Protection Rules via GitHub CLI
# 📦 Requires: gh CLI authenticated with 'repo' scope
# 🧠 Usage: ./scripts/setup-branch-protection.sh
# ───────────────────────────────────────────────────────────────

set -euo pipefail

# 🕵️ Verify GitHub CLI is installed
if ! command -v gh &>/dev/null; then
  echo "❌ Error: GitHub CLI ('gh') is required but not installed." >&2
  echo "👉 Install it from https://cli.github.com/ then re-run this script." >&2
  exit 1
fi

# 📍 Set target branch for protection
TARGET_BRANCH="main"

# 🧾 Get the full repo identifier (e.g. username/repo-name)
OWNER_REPO=$(gh repo view --json nameWithOwner -q .nameWithOwner)

echo "🔐 Applying branch protection rules to: $OWNER_REPO → branch: $TARGET_BRANCH"
echo "──────────────────────────────────────────────────────────────"

# 🧬 Define the JSON ruleset to apply
read -r -d '' PAYLOAD <<'JSON'
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

# 🚀 Execute the API call to apply protection rules
echo "📡 Sending protection rules to GitHub API..."

gh api -X PUT "repos/$OWNER_REPO/branches/$TARGET_BRANCH/protection" --input - <<<"$PAYLOAD"

# ✅ Confirmation

echo ""
echo "🎉 Success! Branch protection has been applied to '$TARGET_BRANCH' on '$OWNER_REPO'."
echo "🔒 Rules enforced: PR review, status checks, linear history, no force push/deletion."
