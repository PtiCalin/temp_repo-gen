# \ud83c\udfbc Code Style

This repo assumes use of automated formatters:
- JS/TS: Prettier + ESLint
- Python: Black + Ruff
- Markdown/YAML/JSON: Prettier

### Formatting Rules

- Use 2-space indentation
- Trailing commas where supported
- Semicolons for JS/TS
- Single quotes preferred
- Always use brackets `{}` for blocks
- Annotate non-obvious logic

### Automation

- Run `scripts/verify-setup.sh` to install all linters and formatters
- CI will fail if linting or formatting fails
