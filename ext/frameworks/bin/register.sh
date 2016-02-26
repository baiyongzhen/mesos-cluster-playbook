#!/bin/sh
if [ $# != 1 ]; then
  echo "please input \"framework type\""
  echo "ex) $0 marathon"
  exit 1
fi

curl -XPOST -H "Content-Type: application/json" http://10.142.142.10:8080/v2/apps -d @"../json/$1.json"
