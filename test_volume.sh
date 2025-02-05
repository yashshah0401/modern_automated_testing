#!/bin/bash

# Test case for volume calculation
test_volume() {
  local height=2
  local width=3
  local length=4
  local expected_volume=24
  local actual_volume=$(./volume.sh $height $width $length)
  
  if [ "$actual_volume" -eq "$expected_volume" ]; then
    echo "Test passed!"
  else
    echo "Test failed!"
  fi
}

test_volume
