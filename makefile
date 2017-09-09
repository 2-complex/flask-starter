
PROJECT_DIR = project

SERVER_DEPS = \
	packages \
	$(PROJECT_DIR)/__init__.py \
	$(PROJECT_DIR)/configuration.py \
	$(PROJECT_DIR)/routes.py \
	$(PROJECT_DIR)/static/css/project.css

run: $(SERVER_DEPS)
	venv/bin/python run.py

venv:
	virtualenv venv

packages: venv requirements.txt
	venv/bin/pip install -r requirements.txt

clean:
	-rm -rf venv
	-rm project/*.pyc
