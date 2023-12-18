#!/bin/bash

fichero=$1

# Verificar si el fichero existe
if [ -e "$fichero" ]; then
	echo "$fichero existe"

	# Verificar si es un fichero regular
	if [ -f "$fichero" ]; then
        	echo "$fichero es un fichero regular."
	# Verificar si es un directorio
	elif [ -d "$fichero" ]; then
        	echo "$fichero es un directorio."
    	else
        	echo "$fichero no es un fichero regular ni un directorio."
    	fi
else
	echo "$fichero no existe."
fi
