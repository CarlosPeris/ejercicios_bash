#!/bin/bash

num=$1

for ((i=1; i<=10; i++))
do
	echo "$num x $i = $(($num * $i))"
done
