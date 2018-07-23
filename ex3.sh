#!/bin/bash

endpoint="https://jsonplaceholder.typicode.com/posts"

pl=`curl "${endpoint}" 2>/dev/null`

num_posts=`jq 'length' <<< ${pl}`
echo ${num_posts}
