#!/bin/bash
if [ ! -d "/root/cuarentena" ]; then
    mkdir -p /root/cuarentena
    echo "Se ha creado la carpeta cuarentena."
fi
find / -type f -name "*Hack*" -exec mv {} /root/cuarentena/ \;
