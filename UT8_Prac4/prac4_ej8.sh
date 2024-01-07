#!/bin/bash
echo "$(date) $(who | cut -d' ' -f1 | sort -u | wc -l)" >> /tmp/usuarios

#En el cron escribimos:
#
#*/2 * * * * /home/administrador/UT8_Prac4/prac4_ej8.sh
