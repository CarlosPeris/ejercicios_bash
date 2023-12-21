#!/bin/bash

num=$((1 + $RANDOM%99))
echo $num
read -p "Adivina el numero: " adivina
check=1

while [[ $check == 1 ]]
do
	if [[ $adivina -eq $num ]]; then
		echo "Enhorabuena! Acertaste."
		exit 1
	elif [[ $adivina -eq 0 ]]; then
		echo "La proxima vez será :("
		exit 1
	elif [[ $adivina -gt $num ]]; then
		echo "Es MAYOR del que hay que adivinar."
		read -p "Adivina el numero: " adivina
	elif [[ $adivina -lt $num ]]; then
		echo "Es MENOR del que hay que adivinar."
                read -p "Adivina el numero: " adivina
	fi
done



