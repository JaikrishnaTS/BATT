#!/bin/bash

inp=${1?Enter a word}
pgidx=${2:-1}

echo "${inp:$pgidx}${inp::$pgidx}ay"
