#!/bin/bash

longline="some
long line
here 
and there"

while read myLine; do
    echo ${myLine} ${#myLine}
done <<< ${longline}

while read myLine; do
    echo ${myLine} ${#myLine}
done < <(echo "${longline}")

# diff <(zcat file1) <(zcat file3)
