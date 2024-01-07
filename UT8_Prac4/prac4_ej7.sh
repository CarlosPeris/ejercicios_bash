#!/bin/bash
if [ "$(date +%u)" -eq 7 ]; then
    rm -rf /tmp/*
fi

#En el cron escribimos:
#
#0 2 * * 7 /home/administrador/UT8_Prac4/prac4_ej7.sh
