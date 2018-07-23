#!/bin/bash

pic_folder="./pictures/"
picre=".*\/IMG_([0-9]+)\.jpg"

for filename in $pic_folder/*; do
    if [[ ${filename} =~ ${picre} ]] && [[ ${BASH_REMATCH[1]} -gt 200 ]]; then
        echo ${filename} ${filename/IMG/OSCON}
    fi
done
