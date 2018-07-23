#!/bin/bash

while read myLine; do
    echo ${myLine} ${#myLine}
done < ${1?need a file to read}
