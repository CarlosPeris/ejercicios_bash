#!/bin/bash

echo "******** EL MENÚ ********"
echo -e "1 - Sumar \n2 - Restar"
echo "3 - Dividir"
echo "4 - Multiplicar"
echo "0 - Salir"

read -p "Dime una opción del 1 al 4: " opcion

if [[ $opcion -eq 0 ]]; then
	echo "Hasta la próxima!"
	exit 1
fi

function sumar(){
	echo  "$(($1 + $2))"
}

function restar(){
        echo  "$(($1 - $2))"
}

function dividir(){
	if [[ $2 -eq 0 ]]; then
		echo "No se puede dividir por 0."
	else
        	echo  "$(($1 / $2))"
	fi
}

function multiplicar(){
        echo  "$(($1 * $2))"
}

until [[ $opcion -eq 0 ]]
do
	case $opcion in
		1)
			read -p "Dame dos numeros: " num1 num2
			res=$(sumar "$num1" "$num2")
			echo "$num1 + $num2 = $res"
			exit 1
			;;
		2)
			read -p "Dame dos numeros: " num1 num2
                	res=$(restar "$num1" "$num2")
	                echo "$num1 - $num2 = $res"
        	        exit 1
			;;
		3)
			read -p "Dame dos numeros: " num1 num2
                	res=$(dividir "$num1" "$num2")
	                echo "$num1 / $num2 = $res"
			exit 1
        	        ;;
		4)
			read -p "Dame dos numeros: " num1 num2
                	res=$(multiplicar "$num1" "$num2")
	                echo "$num1 x $num2 = $res"
			exit 1
        	        ;;
		*)
			echo "No es una opción válida."
			echo ""
			echo "******** EL MENÚ ********"
			echo -e "1 - Sumar \n2 - Restar \n3 - Dividir \n4 - Multiplicar \n0 - Salir"
			read -p "Dime una opción del 1 al 4: " opcion
			;;
	esac
done
