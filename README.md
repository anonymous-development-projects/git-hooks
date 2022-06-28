# Git Hooks

## Commit Message

This git hook is intended for commit message rule compliance.

Commit message must:
- be corresponding to [Conventional Commits specification](https://www.conventionalcommits.org/en/v1.0.0/);
- contains reference to relative issue, see examples and details at https://guidelines.adprojects.ru/development/git-commit/

### How to install

Browse to the folder where is git repository of your project where you want to install commit-message hook and the run:

```bash
curl -so- https://raw.githubusercontent.com/anonymous-development-projects/git-hooks/master/install.sh | bash
```