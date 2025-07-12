# Project Board Automation

This template sets up a GitHub Project board automatically. Issues and pull requests are added to the board when they are opened. When a pull request is merged, its project item is moved to **Done**.

The project configuration lives in `.github/project-config.json` and can be tweaked for your workflow. Run `./scripts/setup-project.sh` to create a board with default fields and views.
