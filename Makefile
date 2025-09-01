.PHONY: dep
dep:
	uv sync --extra dev

.PHONY: fmt
fmt:
	uv run black .
	uv run isort .

.PHONY: lint
lint:
	uv run mypy .
	uv run flake8 .
	uv run isort --check --diff .
	uv run black --check --diff .

.PHONY: fl
fl: fmt lint

.PHONY: run
run:
	uv run python -m main

.PHONY: tests
tests:
	uv run python -m pytest tests -rP

.PHONY: flt
flt: fmt lint tests
