#!/bin/bash

tel1="292-283-2882"
tel2="393-188-2888"

telre="^[0-9]{3}-[0-9]{3}-[0-9]{4}$"

tels=( $tel1 $tel2 some-thing-here )

for t in ${tels[@]}; do
    if [[ "$t" =~ $telre ]]; then
        echo "Match $t";
    else
        echo "$t is not a tel no";
    fi
done
