#!/bin/bash

filename=${1?enter a filename}
echo "File content:"
cat $filename

arr=($(cat someFile))

echo -e "\nIterating through ${#arr[@]} elements"

for i in ${!arr[@]}; do
    echo "arr[$i] = ${arr[$i]}"
done
