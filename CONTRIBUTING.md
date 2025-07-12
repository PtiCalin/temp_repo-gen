# ✨ Contributing Guide

Thank you for considering a contribution to this project!  
This repo is built on curiosity, creativity, and care — and *you* are part of that magic.

---

## 📚 Project Conventions

To keep code and structure consistent across teams and clones, this project follows a unified set of internal conventions:

- 🔤 [Naming Rules](docs/conventions/naming.md)
- 🗂️ [Folder Structure](docs/conventions/folder-structure.md)
- 🧼 [Code Style Guide](docs/conventions/code-style.md)
- 📝 [Commit Format](docs/conventions/commit-format.md)

All PRs and CI checks rely on these conventions. You don’t have to memorize them — they’re embedded into the automation too 💜

### Project Board
Issues and pull requests are automatically added to the project board. Status updates happen when PRs merge so you can track progress at a glance.

## 🧩 Ways to Contribute

🪄 Whether you're a coder, documenter, designer, or dreamer — here are some great ways to help:

- 📚 Improve documentation or fix typos  
- 🐛 Report bugs (see our [Bug Report Template](./.github/ISSUE_TEMPLATE/bug.yml))  
- 🌟 Suggest new features or enhancements  
- 🧪 Write or improve tests  
- 🔧 Refactor or optimize code  
- 🗣️ Start a conversation in [GitHub Discussions](https://github.com/PtiCalin/general-template-repo/discussions)

---

## 🛠 Getting Started

### 1. Fork + Clone

```bash
git clone https://github.com/PtiCalin/general-template-repo.git
cd general-template-repo
```

### 2. Create a Branch

```bash
git checkout -b feat/amazing-idea
```

### 3. Make Your Changes

Edit files, add new content, or work your magic — then:

```bash
git add .
git commit -m "Add: your amazing contribution"
git push origin feat/amazing-idea
```

---

## 📦 Open a Pull Request

Once your changes are pushed:

1. Go to GitHub and open a Pull Request
2. Use the [Pull Request Template](./.github/pull_request_template.md)
3. Reference related issues (e.g. `Closes #3`)
4. Write clearly and kindly — we want to celebrate your work!

### PR Titles & Labels

Pull request titles are checked by CI and must start with one of:

- `feat:` for new features
- `fix:` for bug fixes
- `docs:` for documentation updates
- `chore:` for maintenance tasks

See [Conventional Commits](docs/conventions/commit-format.md) for full details on the allowed prefixes.

Tag your PRs and issues with helpful labels like `bug`, `feature`, `documentation`, or `chore`. A `pr-tracking` label is used automatically for tracking issues created by our workflow.

If the **PR title** check fails, edit your pull request title to use the correct prefix (e.g. `feat: add new thing`) and push again. See the CI output for a direct link to update the title.

### Troubleshooting CI

CI runs on every push and pull request. You can monitor runs in the **Actions** tab on GitHub. If a job fails, check the logs there for details.

---

## 🤖 Code Style & Conventions

- Follow formatting rules (`prettier`, `black`, etc.)
- Stick to existing folder and naming conventions
- Keep code modular, clean, and minimal where possible

### Branch Protection
Main branch is protected. All changes require pull requests with passing `lint`, `test`, and `build` checks. Force pushes and deletions are disabled and linear history is enforced. Repository admins and Dependabot can bypass these rules. See [docs/branch-protection.md](docs/branch-protection.md) for details.
---

## 💖 What We Value

We especially appreciate:

- Kind and constructive communication  
- Attention to clarity (docs are love!)  
- Inclusivity and accessibility  
- Learning in public and sharing growth

---

## 🌿 Final Notes

Not sure where to start? Open a [Discussion](https://github.com/PtiCalin/general-template-repo/discussions) or draft a PR early to get feedback.

You're not just contributing to code — you're growing a thoughtful and joyful digital garden 🌼

---

With gratitude,  
— The PtiCalin Project Team 🧠💫