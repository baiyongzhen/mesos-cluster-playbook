#!/bin/sh
if [ $# != 2 ]; then
  echo "please input \"framework type\" \"framework id\""
  echo "ex) $0 marathon 5dcb52da-268f-4b7b-84e4-fc15fd11c28a-0000"
  exit 1
fi

curl -H "Content-Type: application/json" -XDELETE http://10.142.142.10:8080/v2/apps/$1
curl -H "Content-Type: text/plain" -XPOST http://10.142.142.10:5050/master/teardown -d "frameworkId=$2"
