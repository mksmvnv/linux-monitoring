#!/bin/bash

arg=$1
pattern='^-?[0-9]+([.][0-9]+)?$'

if [[ $arg =~ $pattern ]]; then
	echo "Недопустимый тип аргумента: ${arg}"
	exit 1
else
	echo "${arg}"
fi
