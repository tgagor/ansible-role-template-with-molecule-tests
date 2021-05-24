.PHONY: all create-venv requirements dependencies converge verify test clean

all: create-venv

.venv:
	( \
		python3 -m venv .venv && \
		. .venv/bin/activate && \
		python3 -m pip install --upgrade pip && \
		python3 -m pip install --upgrade setuptools; \
	)

requirements: .venv
	( \
		. .venv/bin/activate && \
		python3 -m pip install -r requirements.txt; \
	)

create-venv: requirements
	@echo "virtualenv ready."

dependencies:
	sudo apt install -y python3-pip libssl-dev libffi-dev git python3-venv

converge:
	( \
		. .venv/bin/activate && \
		molecule converge; \
	)

verify:
	( \
		. .venv/bin/activate && \
		molecule verify; \
	)

test:
	( \
		. .venv/bin/activate && \
		molecule test; \
	)

clean:
	( \
		if [ -f .venv/bin/activate ]; then \
			. .venv/bin/activate && molecule destroy; \
		fi ; \
	);
	rm -rf .venv
	rm -rf .cache
	find . -type f -name '*.py[co]' -delete -o -type d -name __pycache__ -delete
