#!/bin/bash
#bash one-liner to move files from multiple directories one up
read -p "Enter file extension: " exten
read -p "Enter target directory: " target_directory

find . -name "*.$exten" -exec mv {} $target_directory \;
