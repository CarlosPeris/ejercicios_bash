#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "ERROR. Se usa así:  $0 *nombre_usuario*"
	exit 1
fi

usuario=$1

# Ver si existe el usuario
if [[ $(id $usuario) ]]; then
	echo "El usuario $usuario está dado de alta."

	# Ver si el usuario ha iniciado sesión
	if [[ $(who | grep $usuario) ]]; then
		echo "El usuario $usuario ha iniciado sesión."
	else
		echo "El usuario $usuario aún no ha iniciado sesión."
	fi
else
	echo "El usuario $usuario no está dado de alta"
fi
