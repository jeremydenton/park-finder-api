#!/bin/bash

curl "http://localhost:4741/tortoises/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"\
  --data '{
    "tortoise": {
      "age": "'"${AGE}"'",
      "color": "'"${COLOR}"'"
    }
  }'

echo
