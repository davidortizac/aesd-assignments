#!/bin/bash

# Verificar si se han proporcionado ambos argumentos
if [ $# -ne 2 ]; then
    echo "Error: Se requieren dos argumentos: <writefile> <writestr>"
    exit 1
fi

# Asignar los argumentos a variables
writefile=$1
writestr=$2

# Crear el directorio si no existe
mkdir -p "$(dirname "$writefile")"

# Intentar escribir en el archivo
echo "$writestr" > "$writefile"

# Verificar si el archivo se creó y escribió correctamente
if [ $? -ne 0 ]; then
    echo "Error: No se pudo crear o escribir en el archivo $writefile"
    exit 1
fi
