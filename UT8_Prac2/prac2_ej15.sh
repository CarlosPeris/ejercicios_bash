#!/bin/bash

directorio=/dev

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
	elif [[ -L $entrada ]]; then
		echo "Es un enlace simbólico: $entrada"
	elif [[ -b $entrada ]]; then
        	echo "Es un archivo especial de bloque: $entrada"
	elif [[ -c $entrada ]]; then
        	echo "Es un archivo especial de caracter: $entrada"
	fi
done

echo "El total de entradas es $total_entradas"
