#!/bin/bash

multipet="dog
cat
pig"
pet="turtle"
msg="Say hello to PETNAME"

echo "I have 2 ${pet}s"

echo "it starts with char ${pet:0:1}"
echo "second to 5th char ${pet:1:3}"
echo "except first char ${pet:1}"

# replace first occurence
echo ${msg/PETNAME/${pet}}
# msg//PETNAME/sub for replacing all
echo "Other pets are" $multipet
echo "Other pets are" "$multipet" # multiline print using " "
