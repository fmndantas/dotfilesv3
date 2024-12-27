#!/bin/bash

for ((i = 1; ; ++i)) do
    echo $i
    ./gen.out > .input_brute
    diff -w <(./sol.out < .input_brute) <(./slow.out < .input_brute) || break
done 
