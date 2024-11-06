#!/bin/sh

query=$1
encoded_query=$(echo "$query" | sed 's/ /+/g; s/[^a-zA-Z0-9+_.~-]/\\&/g')
if [ -n "$query" ]; then
  xdg-open "https://www.google.com/search?q=$encoded_query" > /dev/null
fi
exit 0
