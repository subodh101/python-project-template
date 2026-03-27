# python-project-template

## Overview
This repository provides a basic Python project template, ideal for quick setup and efficient development.

## Features
- **Workflow Configurations:** Automated testing, linting, `pip-audit`, and `bandit` in `.github/workflows` for multiple Python versions.
- **Dependabot:** Weekly PRs for pip ([pyproject.toml](pyproject.toml)) and GitHub Actions.
- **Testing Setup:** Ready-to-use test cases in `tests` directory.
- **Essential Files:** Includes `.pre-commit-config.yaml` (Ruff + mypy), `.gitignore`, `pyproject.toml`.
- **Python Scripts:** Sample `main.py` and `utils.py` for a quick start.

## Usage
Use the template and modify the existing structure to suit your project needs.

## Updates

### Dependabot and `uv.lock`

Dependabot may update [pyproject.toml](pyproject.toml) only. After merging or applying those changes, run `uv lock` (or `uv lock --upgrade-package <name>`) and commit the updated [uv.lock](uv.lock) so installs and CI stay in sync.

### python3.12

**Faster Python:**
Improved performance via Faster CPython and Profile-Directed Optimization (PDO).

**New Features:**
frozenmap: Immutable hashable mapping type.
@typing.override: Marks method overrides explicitly.
Better Typing: Direct use of NoneType in type hints.

**Improved Error Messages:**
More helpful debugging information.

### Makefile

Uses UV for fast dependency management and pre-commit for code quality.
Add `make fmt` for running format and lint.
Add `make ft` for running format, lint and tests.
