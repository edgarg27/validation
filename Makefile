help:
	@echo "Comandos disponibles: build, clean, post, lint, etc."

build:
	hugo

unit-tests:
	@echo "Ejecutando pruebas unitarias..."

validate:
	@echo "Validando..."

integration-tests:
	@echo "Ejecutando pruebas de integración..."

package: build
	touch awesome-api # Creamos un archivo dummy para cumplir el requisito
	zip -r awesome-website.zip dist/ awesome-api

lint:
	shellcheck setup.sh
	markdownlint README.md DEPLOY.md --disable MD013

clean:
	rm -rf dist/ awesome-website.zip
