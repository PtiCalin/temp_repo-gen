# 📁 Folder Structure Convention

This template uses a lightweight monorepo-style layout. Each top-level folder has a clear purpose so tooling and developers can find things quickly.

## Root Layout

```text
temp_repo-gen/
├── .devcontainer/   # Codespace or Docker environment
├── .github/         # Workflows, templates, and settings
│   └── workflows/
├── .vscode/         # Editor settings
├── ci/              # Reusable GitHub Action logic
├── docs/            # Project documentation and guides
├── packages/        # Independent packages (auto-published)
├── scripts/         # Bootstrap and helper scripts
├── utils/           # Dev utilities and generators
├── tests/           # Unit/integration tests
└── src/             # Core library or CLI code
```

### Purpose Cheatsheet

| Folder/File | Purpose |
|-------------|---------|
| `/scripts` | CLI tools and automation helpers |
| `/utils` | Small utilities, generators, or changelog makers |
| `/packages` | Publishable packages managed in a monorepo style |
| `.github/` | GitHub Actions, issue/PR templates, labels, settings |
| `/docs` | Internal documentation and conventions |
| `/ci` | YAML fragments imported by workflows |
| `/tests` | All test files |
| `/src` | Core project code or CLI logic |

