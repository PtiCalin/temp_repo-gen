#!/usr/bin/env bash
# ───────────────────────────────────────────────────────────────
# 🔍 Verify Setup
# Ensures required linters are installed.
# 🧠 Usage: ./scripts/verify-setup.sh
# ───────────────────────────────────────────────────────────────
set -euo pipefail

missing=()
command -v shellcheck >/dev/null || missing+=(shellcheck)
command -v npx >/dev/null || missing+=(npm)
command -v shfmt >/dev/null || missing+=(shfmt)

if [ ${#missing[@]} -ne 0 ]; then
  echo "❌ Missing tools: ${missing[*]}" >&2
  exit 1
fi

echo "✅ All required tools available"
