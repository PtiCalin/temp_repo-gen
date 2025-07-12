# \ud83c\uddf4 Naming Conventions

## General Principles

- \u2705 Prefer clarity over brevity
- \ud83e\uddfa Use kebab-case for files and folders
- \ud83e\uddea Use PascalCase for component names and classes
- \ud83d\udd27 Use camelCase for functions and variables
- \ud83d\udd11 Environment variables: `ALL_CAPS_SNAKE_CASE`

## Branches

- `feat/short-description`
- `fix/bug-identifier`
- `chore/tooling-update`
- `release/x.y.z`

## GitHub Workflows

- `ci.yml` = core CI tests
- `pr-tracker.yml` = links PRs to issues
- `publish-package.yml` = deploys `packages/*` to GitHub Packages
