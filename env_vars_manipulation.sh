#!/bin/bash


echo "1: yes\n 2: no"
read OPT

if [ $OPT -eq 1 ] || [ $OPT -eq 2 ]; then
	export CHOISE_TEST="$OPT"
	echo "option $CHOISE_TEST"
	exit 0
fi

echo $OPT
echo "FAIL, invalid option"
exit 2
