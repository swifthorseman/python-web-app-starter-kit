setup: ; pipenv shell

install: ; pipenv install --dev

test: ; PYTHONPATH=. pytest -vvv --cov-report term-missing --cov=. --cov-fail-under=100

lint: ; yapf --style=pep8 -i *.py

all: lint test
