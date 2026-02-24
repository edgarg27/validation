#!/bin/bash
# Instala Hugo solo si no está instalado
if ! command -v hugo >/dev/null 2>&1; then
    sudo apt-get update
    sudo apt-get install -y hugo
fi

# Instalar markdownlint-cli (requiere Node.js/npm, que ya viene en ubuntu-latest)
if ! command -v markdownlint >/dev/null 2>&1; then
    sudo npm install -g markdownlint-cli
fi

# Instalar zip
if ! command -v zip >/dev/null 2>&1; then
    sudo apt-get install -y zip
fi
