#!/bin/bash

if [[ $# -ne 2 ]]; then
	echo "ERROR: Hay que pasar dos parámetros, de tal forma:"
	echo ""
	echo "$0 *original* *copia*"
	exit 1
fi

original=$1
copia=$2

# Ver si un archivo es ordinario
if [[ ! -f $original ]]; then
	echo "ERROR: el primer parámetro no es un archivo ordinario"
	exit 1
fi

if [[ -e $copia ]]; then
	echo "ERROR: $copia ya existe. Prueba otro nombre."
	exit 1
fi

cp $original $copia

echo "Se ha copiado correctamente $original como $copia"
