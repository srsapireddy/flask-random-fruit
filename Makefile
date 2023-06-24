install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=app test_app.py

format:
	black *.py

lint:
	pylint --disable=R,C,W1203,W0702 app.py

all: install lint test format
