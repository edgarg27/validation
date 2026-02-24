#!/bin/bash
# Instrucciones de producción corregidas
apt-get update
apt-get install -y make wget

# Descargamos el binario de Hugo v0.80.0 y lo extraemos
wget https://github.com/gohugoio/hugo/releases/download/v0.80.0/hugo_0.80.0_Linux-64bit.tar.gz
tar -zxvf hugo_0.80.0_Linux-64bit.tar.gz hugo

# Movemos hugo a los binarios del sistema para que sea reconocido
mv hugo /usr/local/bin/

# Ejecutamos la compilación
make build
