#!/bin/bash

# This script generates a list of numbers from 1 to 10 and prints them to the console.

echo "Enter the filename:"
read filename

if [ -f "$filename" ]; then
  echo "$filename file exists."
else
  echo "$filename file does not exist."
fi
# for i in {1..10}; do
#   echo $i
# done

# if [ -f "main1.tf" ]; then
#   echo "main1.tf file exists."
# else
#   echo "main1.tf file does not exist."
# fi