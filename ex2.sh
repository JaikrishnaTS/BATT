#!/bin/bash

function double() {
    local num=${1?Give a number to double}
    local doublenum=$(( ${num} * 2 )) # spaces are optional :O
    echo "Double of ${num} is ${doublenum}"
}
