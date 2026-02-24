# Tec-Net S.A. Website

## Prerequisites

Para poder construir este sitio web necesitas:

* Go-Hugo v0.80+
* GNU Make v3.81+
* Un entorno de terminal compatible con Unix

## Lifecycle

El ciclo de vida del desarrollo se gestiona a través de nuestro `Makefile`:

* **make build**: Genera los archivos estáticos HTML/CSS en el directorio `dist/`.
* **make clean**: Elimina el directorio `dist/` generado.
* **make post POST_NAME="nombre" POST_TITLE="Titulo"**: Genera automáticamente un nuevo artículo de blog.
* **make help**: Muestra el menú de ayuda.

## Build Workflow

El flujo de trabajo `u3_tarea1` instala automáticamente las dependencias necesarias mediante `setup.sh` y luego ejecuta en secuencia las validaciones: lint (usando shellcheck), build, unit-tests, validate e integration-tests.

## Continuous Delivery

El flujo de trabajo `u3_tarea2` implementa la entrega continua empaquetando la aplicación en un archivo ZIP (`awesome-website.zip`) mediante el objetivo `make package`. Este archivo se archiva automáticamente como un artefacto en GitHub Actions cuando los cambios se fusionan en la rama principal.

## Automated Releases

El flujo de trabajo `u3_tarea3` automatiza la creación de versiones (Releases) en GitHub. Al empujar una etiqueta (tag) de Git, se crea un Release oficial que incluye el archivo `awesome-website.zip` y el contenido de `DEPLOY.md` como notas de la versión.
