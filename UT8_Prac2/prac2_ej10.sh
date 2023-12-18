#!/bin/bash

function es_primo() {
	num=$1
	if [[ $num -lt 2 ]]; then
		return 1
	fi
	for ((i=2; i*i<=$num; i++));
	do
		if [[ $((num % i)) -eq 0 ]]; then
			return 1
		fi
	done
	return
}

if es_primo $1; then
	echo "$1 es primo."
else
	echo "$1 no es primo."
fi
