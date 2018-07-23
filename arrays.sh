#!/bin/bash

arr=( 1 2 3 "four teen" 5)

echo "Iterating through ${#arr[@]} elements"

for i in ${!arr[@]}; do
    echo "arr[$i] = ${arr[$i]}"
done

# 2
arr=(1 2 3 4 5)

for i in ${!arr[@]}; do
    echo "arr[$i] = ${arr[$i]}"
    if [[ ${arr[$i]} -eq 3 ]]; then
        unset arr[$i]
    fi
done
echo ${!arr[@]} # does not delete the index
echo ${arr[@]}
echo

echo "Adding two elements"
arr+=(44 22)
echo ${!arr[@]}
echo ${arr[@]}
echo

echo "Adding 20"
arr[20]=777
echo ${!arr[@]}
echo ${arr[@]}
echo
