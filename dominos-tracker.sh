#!/bin/bash
ID=${1##*id=}
result=
while [ "${result}" != "delivery" ]; do
  result=$(curl -s "https://www.dominos.co.uk/pizzaTracker/api/orderstatus/?id=${ID}" -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:120.0) Gecko/20100101 Firefox/120.0' -H 'Accept-Language: en-GB' -H 'Accept-Encoding: gzip'   | jq -r '{     
       "-1": "connectionError",
       "1": "cancelled",
       "4": "orderNotFound",
       "0": "init",
       "6": "order",
       "7": "prep",
       "5": "baking",
       "8": "quality",
       "10": "collection",
       "2": "collected",
       "9": "delivery",
       "3": "delivered",
       "-2": "skipIntro"}[.statusId | tostring]')

  printf "${result}         \r"
  sleep 20
done

echo "Pizza incoming"

