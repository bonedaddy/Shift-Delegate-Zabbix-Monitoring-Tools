#! /bin/bash

# gets the current block height number

block_num=$(curl -sk -X GET http://localhost:9305/api/blocks/getHeight | awk -F ',' '{print $2}' | awk -F ':' '{print $2}' | sed 's/}//g')

echo "$block_num"
