#!/bin/bash

# Read the user's input
read -rp "Enter a letter: " letter

# Process the data with AWK, remove non-printable characters, filter based on input entered and save to a txt file
awk -F ',' '{ printf "%-50s %-20s\n", $1, $2 }' ~/altschool_assigment/country-list.csv | grep -i "^$letter" | tee output.txt
