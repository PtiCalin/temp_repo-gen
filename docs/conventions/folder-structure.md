# \ud83d\udcc1 Folder Structure Convention

This template follows a modular structure designed for scale, clarity, and automation.

## Root-level Layout

| Folder/File         | Purpose |
|---------------------|---------|
| `/scripts`          | CLI tools, init scripts, CI helpers |
| `/utils`            | Code-generating, formatter, and tool functions |
| `/packages`         | Monorepo-style packages (auto-published) |
| `.github/`          | GitHub Actions, issue/PR templates, labels, settings |
| `/docs`             | Internal developer documentation and conventions |

## Example `packages/` layout

```
packages/
├── api/
│   ├── src/
│   └── package.json
└── ui/
    ├── src/
    └── package.json
```
