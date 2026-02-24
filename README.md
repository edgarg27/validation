# Mi Proyecto de Sitio Web Estático (Hugo)

Este proyecto es parte de la formación en DevOps. Utiliza **Go-Hugo** para la generación del sitio y **Make** para la automatización de tareas.

## Requisitos
- Hugo (Extended version)
- Make
- Ubuntu 18.04

## Instrucciones de uso
- `make help`: Muestra los comandos disponibles.
- `make build`: Genera el sitio web en la carpeta `dist/`.

## Workflow
Este proyecto utiliza **GitHub Actions** para la Integración Continua.
El flujo de trabajo `module3_task0` se encarga de:
1. Clonar el repositorio.
2. Ejecutar `make help` para validar que el entorno y el Makefile están configurados correctamente.

Se ejecuta automáticamente en cada `push` a la rama `main` y diariamente a la medianoche.
