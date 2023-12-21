#!/bin/bash

directorio=$1

if [[ ! -d $directorio ]]; then
	echo "ERROR: El directorio no existe."
	exit 1
fi

cuenta_ficheros=0
cuenta_subdir=0

# Usamos el /* para que se vean todas las entradas que hay en el directorio
for entrada in $directorio/* ;
do
	if [[ -f $entrada ]]; then
		((cuenta_ficheros++))
	elif [[ -d $entrada ]]; then
		cuenta_subdir=$((cuenta_subdir + 1))
	fi
done

echo "Dentro del directorio $directorio hay:"
echo "    $cuenta_ficheros ficheros"
echo "    $cuenta_subdir subdirectorios"

