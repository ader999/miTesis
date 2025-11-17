#!/usr/bin/env bash

# Este script entra en el entorno de Nix definido en ../shell.nix
# y luego ejecuta TexStudio.

# Obtenemos el directorio donde se encuentra este script.
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

echo "Iniciando entorno Nix para TexStudio desde $PROJECT_ROOT..."

# Ejecutamos nix-shell en el directorio del proyecto, que contiene shell.nix
# y le pedimos que corra texstudio.
(cd "$PROJECT_ROOT" && nix-shell --run "texstudio &")

echo "TexStudio deberia haberse iniciado."