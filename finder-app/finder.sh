#!/bin/bash

# Verificar si se han proporcionado ambos argumentos
if [ $# -ne 2 ]; then
    echo "Error: Se requieren dos argumentos: <filesdir> <searchstr>"
    exit 1
fi

# Asignar los argumentos a variables
filesdir=$1
searchstr=$2

# Verificar si filesdir es un directorio válido
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir no es un directorio válido"
    exit 1
fi

# Contar el número de archivos en el directorio y subdirectorios
num_files=$(find "$filesdir" -type f | wc -l)

# Contar el número de líneas coincidentes en todos los archivos
num_matches=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Imprimir el resultado
echo "El número de archivos es $num_files y el número de líneas coincidentes es $num_matches"
