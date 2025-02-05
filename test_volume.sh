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
    echo "Test failed! Input: height=$height, width=$width, length=$length. Expected '$expected_output' but got '$actual_output'"
  fi
}

# Test cases
test_volume 2 3 4 24
test_volume 1 1 1 1
test_volume 5 5 5 125

# Failing test cases
test_volume 0 3 4 "Invalid input"
test_volume -1 3 4 "Invalid input"

# Additional custom test cases
test_volume 3 4 5 60
test_volume 0 2 3 "Invalid input"
test_volume -2 3 4 "Invalid input"
test_volume 2 3 abc "Invalid input"

# Intentionally failing test cases
test_volume 2 2 2 10  # This should fail
test_volume 3 3 3 30  # This should fail
