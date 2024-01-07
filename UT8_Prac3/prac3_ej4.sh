#!/bin/bash
while IFS=, read -r accion nombre apellido1 apellido2 grupo; do
    ./gestionusuarios.sh $accion $nombre $apellido1 $apellido2 $grupo
done < gestion_usuarios.txt
