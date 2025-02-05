#!/bin/bash

# Test case for volume calculation
test_volume() {
  local height=$1
  local width=$2
  local length=$3
  local expected_output=$4
  local actual_output=$(./volume.sh $height $width $length)
  
  if [ "$actual_output" == "$expected_output" ]; then
    echo "Test passed!"
  else
    echo "Test failed! Expected '$expected_output' but got '$actual_output'"
  fi
}

# Test cases
test_volume 2 3 4 24
test_volume 1 1 1 1

# Failing test cases
test_volume 0 3 4 "Invalid input"

# Additional failing test cases
test_volume abc 3 4 "Invalid input"
