#!/bin/bash

die() {
	echo >&2 "$@"
	exit 1
}

echo "inform  word 1"
read WORD1
echo "inform word 2"
read WORD2

LENGTH1=${#WORD1}
LENGTH2=${#WORD2}

if [[ $LENGTH1 -eq 0  ]]; then
	die "word 1 is empty"
fi

if [[ $LENGTH2 -eq 0  ]]; then
	die "word 2 is empty"
fi

if [[ $WORD1 == $WORD2  ]]; then 
	echo "the words are the same"
fi

echo "the word $WORD1 has $LENGTH1 characters"
echo "the word $WORD2 has $LENGTH2 characters"

exit 0




