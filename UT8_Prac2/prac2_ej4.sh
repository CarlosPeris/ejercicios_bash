#!/bin/bash

fichero=$1

# Verificar si el fichero existe
if [ -e "$fichero" ]; then
	echo "$fichero existe"

	# Verificar si tenemos permisos de lectura
	if [ -r "$fichero" ]; then
        	echo "El contenido de $fichero es"
		cat "$fichero"
    	else
        	echo "No tienes permisos de lectura sobre $fichero"
    	fi
else
	echo "$fichero no existe."
fi
