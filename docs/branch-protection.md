# Branch Protection Rules

This project uses a standard branch protection ruleset to keep `main` safe and the history clean.

## Purpose

Branch protection ensures that important checks run before code is merged. It prevents force pushes and accidental deletions so that the integrity of the main branch is preserved.

## Who Can Bypass

Repository administrators and the **Dependabot** app are allowed to bypass the restrictions. This keeps regular development strict while still letting security updates and admin fixes through when needed.

## Why Each Rule Exists

- **Require pull requests before merging** – encourages code review and keeps history clear.
- **Require status checks** (`lint`, `test`, `build`) – only merge code that passes automated quality gates.
- **Prevent force pushes and deletions** – protects the branch from accidental damage.
- **Require linear history** – keeps git log readable and avoids merge bubbles.

## Manual Setup in GitHub UI

1. Go to your repository on GitHub.
2. Navigate to **Settings** → **Branches** → **Branch protection rules**.
3. Create a rule for the `main` branch.
4. Enable:
   - "Require a pull request before merging"
   - "Require status checks to pass before merging" and select `lint`, `test`, `build`
   - "Require linear history"
   - Disable force pushes and branch deletions
5. Under **Branch protection rule exceptions**, add your repository administrators and the **Dependabot** app.

For more details see [GitHub Docs: Managing Branch Protection Rules](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-branch-protection-rules).
