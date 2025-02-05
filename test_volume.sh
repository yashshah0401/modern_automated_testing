#!/bin/bash

# Test case for volume calculation
test_volume() {
  local height=$1
  local width=$2
  local length=$3
  local expected_volume=$4
  local actual_volume=$(./volume.sh $height $width $length)
  
  if [ "$actual_volume" -eq "$expected_volume" ]; then
    echo "Test passed!"
  else
    echo "Test failed!"
  fi
}

# Test cases
test_volume 2 3 4 24
test_volume 1 1 1 1
test_volume 5 5 5 125
