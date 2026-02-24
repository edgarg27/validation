#!/bin/bash
# Instala Hugo solo si no está instalado
if ! command -v hugo >/dev/null 2>&1; then
    sudo apt-get update
    sudo apt-get install -y hugo
fi
