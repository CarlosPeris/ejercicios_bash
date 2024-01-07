#!/bin/bash
echo "$(date '+%T %F') up $(uptime | awk '{print $3,$4,$5,$6,$7}') $(who | tail -n1)" >> /var/log/historial.txt

#En el cron escribimos:
#
#*/10 * * * * /home/administrador/UT8_Prac4/prac4_ej6.sh
