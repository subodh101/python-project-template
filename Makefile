.PHONY: dep
dep:
	pip3 install pipenv
	pipenv install --dev

.PHONY: fmt
fmt:
	pipenv run black .
	pipenv run isort .

.PHONY: lint
lint:
	pipenv run mypy .
	pipenv run flake8 .
	pipenv run isort --check --diff .
	pipenv run black --check --diff .

.PHONY: fl
fl: fmt lint

.PHONY: run
run:
	pipenv run python -m main

.PHONY: tests
tests:
	pipenv run python -m pytest tests -rP

.PHONY: flt
flt: fmt lint tests
