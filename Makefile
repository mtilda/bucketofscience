.venv:
	rm -r .venv || true
	python3 -m venv .venv --prompt $(shell basename $(CURDIR))
	.venv/bin/pip install --upgrade pip
	.venv/bin/pip install -r requirements.txt

requirements.txt: .venv
	pip freeze > requirements.txt
