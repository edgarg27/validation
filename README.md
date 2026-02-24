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
