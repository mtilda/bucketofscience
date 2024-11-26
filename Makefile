.venv:
	rm -r .venv || true
	python3 -m venv .venv --prompt $(shell basename $(CURDIR))
	.venv/bin/pip install --upgrade pip

.PHONY: install
install: .venv
	.venv/bin/pip install -r requirements.txt

requirements.txt: .venv
	rm requirements.txt || true
	.venv/bin/pip freeze > requirements.txt
