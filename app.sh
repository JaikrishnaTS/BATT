#!/bin/bash

#name=$1
#
#if [[ ${name} == "" ]]; then
#    echo "please enter  a name"
#    exit
#fi
usage="Please enter a name"
name=${1?${usage}}
#conference=${2?${usage}}
conference=${2:-OSCON}

echo "Hello ${name} at ${conference}"
