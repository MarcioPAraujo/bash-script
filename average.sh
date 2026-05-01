#!/bin/bash
# it should calculate the average of grades

grades=0
valid_grades=1

until [ $valid_grades -eq 5 ]; do
	echo "insert the $valid_grades number"
	read grade

	if [ $grade -gt 10 ]; then
		echo "notes must not be bigger than ten"
		continue
	fi

	if [ $grade -lt 0 ]; then
		echo "notes must be bigger than zero"
		continue
	fi

	((valid_grades++))
	grades=$((grade + grades))

done

average=$((grades / 4))

echo "The average is $average"
