#!/bin/bash

directorio=$1

if [[ ! -d $directorio ]]; then
	echo "ERROR: El directorio no existe."
	exit 1
fi

total_entradas=0

# Usamos el /* para que se vean todas las entradas que hay en el directorio
for entrada in $directorio/* ;
do
	((total_entradas++))

	if [[ -f $entrada ]]; then
		echo "Es un fichero: $entrada"
	elif [[ -d $entrada ]]; then
		echo "Es un directorio: $entrada"
	fi
done

echo "El total de entradas es $total_entradas"
