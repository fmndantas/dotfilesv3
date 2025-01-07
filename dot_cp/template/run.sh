#!/bin/sh

for input in ./in*
do
    if [ -f "$input" ]; then  # Check if it's a file
        echo "=================================================="
        echo "$input"
        ./sol.out < "$input"
    fi
done
