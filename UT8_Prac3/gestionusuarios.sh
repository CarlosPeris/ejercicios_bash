#!/bin/bash
if [ "$#" -lt 4 ]; then
    echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
    exit 1
fi

accion=$1
nombre=$2
apellido1=$3
apellido2=$4
grupo=${5:-$nombre}

if [ "$accion" == "alta" ]; then
    identificativo="alu$(echo $apellido1 | cut -c 1-2)$(echo $apellido2 | cut -c 1-2)$(echo $nombre | cut -c 1)"
    sudo useradd -m -s /bin/bash -G $grupo -c $nombre $identificativo
else
    identificativo="alu$(echo $apellido1 | cut -c 1-2)$(echo $apellido2 | cut -c 1-2)$(echo $nombre | cut -c 1)"
    sudo userdel -r $identificativo
fi
