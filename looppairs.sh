#!/bin/bash

while read myFruit myNum; do
    echo ${myFruit}=${myNum}
done < ${1?need a file to read}
