#!/bin/bash

num=$1

if [[ $((num % 2)) -eq 0 ]]; then
	echo "$num es par."
else
	echo "$num es impar."
fi
