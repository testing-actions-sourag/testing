#!/bin/bash

# This script generates prime numbers to a file specified by the user.
# get the first argument passed to the script
filename=$1

# write the prime numbers to the file
primes=0
for ((i=2; i<100; i++))
do
    for ((j=2; j<=i; j++))
    do
        if [ $((i%j)) -eq 0 ]
        then
            break
        fi
    done
    if [ $i -eq $j ]
    then
        primes=$((primes+1))
        echo $i >> $filename
    fi
done