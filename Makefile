EXPECTED_COVERAGE := 100

.DEFAULT_GOAL := test

develop: ; pipenv shell

install: ; pipenv install --dev

test: ; PYTHONPATH=. pipenv run pytest -vvv -p no:cacheprovider --cov-report term-missing --cov=. --cov-fail-under=$(EXPECTED_COVERAGE)

start-app: ; pipenv run uvicorn src.app:app --host 0.0.0.0 --port 3000 --reload --reload-dir src --no-access-log

format-code:
    PYTHONPATH=. pipenv run yapf --style=pep8 -i -r .
    PYTHONPATH=. pipenv run isort .
