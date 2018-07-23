#!/bin/bash

endpoint="https://jsonplaceholder.typicode.com/comments?postId="

emails=()

for postId in {1..10}; do
    emails+=(`curl -s "${endpoint}${postId}" | jq -c -r '.[].email'`)
done

echo "Iterating through ${#emails[@]} elements"

for i in ${!emails[@]}; do
    echo "emails[$i] = ${emails[$i]}"
done
