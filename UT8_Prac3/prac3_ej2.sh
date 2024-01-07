#!/bin/bash

# Archivos que pueden ser modificados por cualquier usuario
archivos_peligrosos=$(find $1 -type f -perm -007)

# Ver y mostrar si  se encontraron archivos peligrosos
if [ -n "$archivos_peligrosos" ]; then
	# Guardar la lista en archivos_peligrosos.txt
	echo "$archivos_peligrosos" > archivos_peligrosos.txt
	echo "Se han examinado archivo peligrosos!"
	echo "Revisa archivos_peligrosos.txt"
else
	echo "No se encontraron archivos peligrosos."
fi



