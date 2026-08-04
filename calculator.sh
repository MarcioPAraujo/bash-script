#!/bin/bash

die(){
	echo >&2 "$@"
	exit 1
}

valid_number(){
	echo $1 | grep -E -q '^[0-9]+$'
}

add(){
	echo $(($1 + $2))
}

subtract(){
	echo $(($1 - $2))
}

multiply(){
	echo $(($1 * $2))
}

divide(){
	echo $(($1 / $2))
}


if [ $# -lt 3 ]; then
        die "missing arguments"
fi

$(valid_number $2) || die "second argument should be a number"
$(valid_number $3) || die "third argument should be a number"

if [ "$1" == "a" ]; then
	echo $(add $2 $3)
	exit 0
fi

if [ "$1" == "s" ]; then
	echo $(subtract $2 $3)
	exit 0
fi

if [ "$1" == "m" ]; then
	echo $(multiply $2 $3)
	exit 0
fi

if [ "$1" == "d" ]; then
	echo $(divide $2 $3)
	exit 0
fi

$(die "invalid operation")
