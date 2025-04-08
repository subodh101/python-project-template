# python-project-template

## Overview
This repository provides a basic Python project template, ideal for quick setup and efficient development.

## Features
- **Workflow Configurations:** Automated testing and linting workflows in `.github/workflows` for multiple python versions.
- **Testing Setup:** Ready-to-use test cases in `tests` directory.
- **Essential Files:** Includes `.flake8`, `.gitignore`, `Pipfile`, `pyproject.toml`.
- **Python Scripts:** Sample `main.py` and `utils.py` for a quick start.

## Usage
Use the template and modify the existing structure to suit your project needs.

## Updates

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

Add `make fl` for running format and lint.
Add `make flt` for running format, lint and tests.
