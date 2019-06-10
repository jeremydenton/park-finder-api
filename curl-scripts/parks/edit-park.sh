#!/bin/bash

curl "http://localhost:4741/parks/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"\
  --data '{
    "park": {
      "name": "'"${NAME}"'",
      "address": "'"${ADDRESS}"'",
      "bathroom": "'"${BATHROOM}"'",
      "user_id": "'"${USERID}"'"
    }
  }'

echo
