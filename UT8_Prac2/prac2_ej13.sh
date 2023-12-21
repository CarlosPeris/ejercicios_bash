#!/bin/bash

read -p "Dame dos numeros para empezar a sumar: " num1 num2
res=$(($num1 + $num2))

echo "La suma es igual a $res"

num=1

until [[ $num -eq 0 ]]
do
	read -p "Dame otro numero que sumar: " num
	res=$(($res + $num))
	echo "La suma es igual a $res"
done
