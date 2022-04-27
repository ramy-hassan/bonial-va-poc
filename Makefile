SYSTEM_PYTHON ?= python3

all: env

env: .venv
	.venv/bin/pip install -r lambda/requirements.txt

.venv:
	$(SYSTEM_PYTHON) -m venv .venv
	.venv/bin/pip install --upgrade pip wheel
