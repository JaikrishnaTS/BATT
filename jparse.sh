#!/bin/bash

endpoint="https://jsonplaceholder.typicode.com/posts/1"

pl=`curl "${endpoint}" 2>/dev/null`

title=`jq '.title' <<< ${pl}`
body=`jq '.body' <<< ${pl}`

echo -e "Title:\n${title}\n"
echo -e "Body:\n${body}\n"

rest=`jq 'del(.title,.body)' <<< ${pl}`
echo -e "Rest:\n${rest}\n"
