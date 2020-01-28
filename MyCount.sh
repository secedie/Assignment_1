#!/bin/bash

# This program loops through a sequence of 20 numbers. In each iteration,
# the script prints out the number of the loop iteration and whether the number
# is single-digit or double-digit.


for i in {1..20}; do
        if (( $i < 10 )); then
                digit="single-digit"
        else
                digit="double-digit"
        fi
        echo "$i is a $digit number"
done