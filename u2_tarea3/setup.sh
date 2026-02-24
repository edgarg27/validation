#!/bin/bash
# Instrucciones de producción simuladas
apt-get update
apt-get install -y hugo make
make build
