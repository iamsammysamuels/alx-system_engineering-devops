#!/usr/bin/env bash
# Bash script that displays the content of the current directory in a list format
search_files=$(pwd)
for files in $(ls $search_files);
do
	echo "$files" | cut -b 3-
done
