#!/bin/bash

# Guardar el listado de los últimos usuarios que iniciaron sesión
listado=$(last)

# Filtrar solo las líneas que contienen direcciones IP
direcciones=$(echo "$listado" | egrep -o '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b')

echo "Usuarios y Direcciones IP:"
echo "$listado" | grep -E "$direcciones" | awk '{print $1, $3}'
