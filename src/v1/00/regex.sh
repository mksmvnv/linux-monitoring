#!/bin/bash

data=$1
pattern='^-?[0-9]+([.][0-9]+)?$'

if [[ $data =~ $pattern ]]; then
	echo "Недопустимый тип аргумента: ${data}"
	exit 1
else
	echo "${data}"
fi
