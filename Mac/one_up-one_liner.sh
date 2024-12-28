#!/bin/bash

find . -name "*.mkv" -exec mv {} --target .;

# Simple example of loop to move files from subdirectories to the current directory
for i in {01..10}; do mv folder$i/file$i .; done




# Examples

# Might only work for less than 10 items
for i in {1..9}; do cd <dir> && mv *.mkv .. && cd ..; done

# Remove the remaining folders
for i in {1..9}; do rm -rf <dir>; done
