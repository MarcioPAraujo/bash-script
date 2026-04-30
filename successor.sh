#!/bin/bash
# reads a number and return its antecessor
echo "type a number: "
read number
antecessor=$((number - 1))
echo "the antecessor of $number is $antecessor"
