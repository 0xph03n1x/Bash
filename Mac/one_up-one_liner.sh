#!/bin/bash

find . -name "*.mkv" -exec mv {} --target ~/Downloads/Private\ Eyes \;

# Simple example of loop to move files from subdirectories to the current directory
for i in {01..10}; do mv folder$i/file$i .; done




# Examples

# Might only work for less than 10 items
for i in {1..9}; do cd Penny.Dreadful.S03E0$i.576p.WEBRIP.x264.AC3-GOD && mv *.mkv .. && cd ..; done

# Remove the remaining folders
for i in {1..9}; do rm -rf Penny.Dreadful.S03E0$i.576p.WEBRIP.x264.AC3-GOD; done
