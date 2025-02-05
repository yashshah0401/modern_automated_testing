#!/bin/bash

height=$1
width=$2
length=$3

# Check for invalid inputs
if [ "$height" -le 0 ] || [ "$width" -le 0 ] || [ "$length" -le 0 ]; then
  echo "Invalid input"
  exit 1
fi

volume=$((height * width * length))
echo $volume
