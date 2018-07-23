#!/bin/bash

tel1="(292)-283-2882"
tel2="393-188-2888"
tel3="(292)283-2882"

telre="^\([0-9]{3}\)-?[0-9]{3}-[0-9]{4}$"

# how to capture string with spaces in an array?
tels=(${tel1} ${tel2} ${tel3} some-thing-here)

for t in ${tels[@]}; do
    if [[ "$t" =~ $telre ]]; then
        echo "Match $t";
    else
        echo "$t is not a tel no";
    fi
done
