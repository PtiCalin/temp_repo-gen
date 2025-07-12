#!/usr/bin/env bash
# ───────────────────────────────────────────────────────────────
# ✨ Lint Helper
# Checks shell scripts with shellcheck and YAML/Markdown with prettier.
# 🧠 Usage: ./scripts/lint.sh
# ───────────────────────────────────────────────────────────────
set -euo pipefail

# 🛑 Ensure required tools exist
command -v shellcheck >/dev/null || {
  echo "shellcheck is required" >&2
  exit 1
}
command -v npx >/dev/null || {
  echo "npm (npx) is required" >&2
  exit 1
}

# 🧠 Logic: lint shell scripts
find scripts -type f -name '*.sh' -print0 | xargs -0 shellcheck

# 🧠 Logic: lint workflows and YAML docs
npx prettier --check "**/*.yml" "**/*.md" > /dev/null

echo "✅ Linting complete"
