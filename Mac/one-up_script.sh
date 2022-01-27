#!/bin/bash
#Move files from multiple directories to one

read -p "Enter file name: " name_file
read -p "Please Enter path where you want to save your result: " path
if [[ -z "$name_file" || -z "$path" ]]; then
    echo "Either you have not entered the Domain Name, or you have not entered the path."
    exit 1
else
    find . -name "$name_file" -exec mv -t "$target_directory"
fi
