#!/bin/bash

DEFAULT_ARG_VAL=0

VAR=${1:-$DEFAULT_ARG_VAL}

if [ $VAR -eq $DEFAULT_ARG_VAL ]; then
	echo "please inform a value"
	exit 1
fi

echo "value $VAR"
exit 0



