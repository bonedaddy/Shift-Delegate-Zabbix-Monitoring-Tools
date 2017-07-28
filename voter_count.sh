#!/bin/bash

# gets current number of voters

count=$(curl -sk -X GET http://localhost:9305/api/delegates/voters?publicKey=<pub-key> | grep -oi username  | wc -l)

echo "$count"
