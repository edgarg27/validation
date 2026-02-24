.PHONY: build clean post help

build: ## Generar el sitio web a partir de los archivos en el directorio dist/
	hugo

clean: ## Limpia el contenido del directorio dist/
	rm -rf dist/

post: ## Crear una nueva entrada de blog usando variables POST_TITLE y POST_NAME
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ## Imprime la lista de targets y su uso
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'
