.PHONY: dep
dep:
	uv sync --extra dev
	uv run pre-commit install

.PHONY: fmt
fmt:
	uv run pre-commit run --all-files

.PHONY: run
run:
	uv run python -m main

.PHONY: tests
tests:
	uv run python -m pytest tests -rP

.PHONY: ft
ft: fmt tests
