#!/bin/bash

function hello() {
    local name=${1?give a name}
    echo "Hello ${name}"
    return 33 # numeric only
}

