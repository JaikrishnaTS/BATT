#!/bin/bash

usage="Please enter a filename\nUSAGE: $0 <filename>"
filename=$1

if [[ $# -ne 1 ]]; then
    echo -e ${usage}
    exit 1
fi

if [[ ! -f ${filename} ]]; then
    echo "File ${filename} does not exist"
    exit 2
fi
filetype=`file -b ${filename}`

echo "File ${filename} is of type ${filetype}"
