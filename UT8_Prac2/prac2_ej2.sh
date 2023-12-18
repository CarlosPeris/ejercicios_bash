#!/bin/bash

num1=$1
num2=$2

# Verificamos si los argumentos son numeros
verifica='^[0-9]+$'

if [[ $num1 =~ $verifica ]] && [[ $num2 =~ $verifica ]]; then
	# Hacemos la suma
	suma=$(($num1 + $num2))
	echo "$num1 + $num2 = $suma"
else
	echo "ERROR: Los dos argumentos no son numeros."

fi
