#!/bin/bash

create_files(){
	for i in {1..10}; do
		touch "file_$i"
		echo "this is the file number $i" > file_$i
	done
}


echo "type the directory name"
read NEW_DIR

mkdir $NEW_DIR

cd $NEW_DIR

pwd

ls

$(create_files)

cat file_*

