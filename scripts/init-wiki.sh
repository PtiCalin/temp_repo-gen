#!/usr/bin/env bash
# ───────────────────────────────────────────────────────────────
# 📚 Initialize GitHub Wiki with starter pages
# Copies files from /wiki-starter into the repo's wiki repository
# Requires: git and a token with push access
# Usage: ./scripts/init-wiki.sh <owner> <repo>
# ───────────────────────────────────────────────────────────────
set -euo pipefail

OWNER=${1:-""}
REPO=${2:-""}

if [[ -z "$OWNER" || -z "$REPO" ]]; then
  echo "Usage: $0 <owner> <repo>"
  exit 1
fi

WIKI_URL="https://github.com/${OWNER}/${REPO}.wiki.git"
CLONE_URL="$WIKI_URL"
if [[ -n "${GITHUB_TOKEN:-}" ]]; then
  CLONE_URL="https://x-access-token:${GITHUB_TOKEN}@github.com/${OWNER}/${REPO}.wiki.git"
fi

TMP_DIR=$(mktemp -d)
trap 'rm -rf "$TMP_DIR"' EXIT

echo "📚 Cloning wiki repo..."
 git clone "$CLONE_URL" "$TMP_DIR"

cp wiki-starter/*.md "$TMP_DIR"/

cd "$TMP_DIR"

if [[ -n "$(git status --porcelain)" ]]; then
  git add .
  git commit -m "feat: initialize wiki" || true
  echo "🚀 Pushing wiki pages..."
  git push origin master
else
  echo "✅ Wiki already up to date"
fi
