#!/bin/bash

for ((i = 1; ; ++i)) do    
    ./gen.out > .input_while
    cat ./.input_while
    ./sol.out < .input_while
    read -n1 key
    if [[ -z $key ]]; then
	continue
    else
	break
    fi
done 
