#!/bin/bash

alphabet=({a..z} {A..Z})
special_charcters=("-" "_" ".")

# should print 52
#echo "${#alphabet[@]}"


create_name() {
	local length=$1
	local name=$2

	local counter=1

	while [ $counter -lt $1 ]; do
		local letter=$(( RANDOM % 51  ))
		name+=${alphabet[$letter]}
		((counter++))
	done
	echo ${name[@]}

}

create_file_name() {
	local length=$1

	local file=("file_")

	file=$(create_name $length $file )
	
	file+=".txt"
	echo ${file[@]}

}

create_directory_name() {
	local length=$1

	local dir=("dir-")

	dir=$( create_name $length $dir )
	echo ${dir[@]}

}

directories=$(( RANDOM % 51 ))
text_files=$(( RANDOM % 51 ))

file_name=$(create_file_name 10 )
dir_name=$(create_directory_name 5)

echo $file_name
echo $dir_name

# while [ $i -le $directories ]; do
# 	echo "new directory"
# 	((i++))
# 	while [ $j -le $text_files ]; do
# 		echo "new file"
# 		((j++))
# 	done
# done


