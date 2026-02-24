help:
	@echo "Comandos disponibles: build, clean, post, lint, etc."

build:
	hugo

clean:
	rm -rf dist/

lint:
	shellcheck setup.sh

unit-tests:
	@echo "Ejecutando pruebas unitarias..."

validate:
	@echo "Validando..."

integration-tests:
	@echo "Ejecutando pruebas de integración..."
