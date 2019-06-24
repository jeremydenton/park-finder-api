#!/bin/bash

curl "http://localhost:4741/tortoises" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"\
  --data '{
    "tortoise": {
      "age": "'"${AGE}"'",
      "color": "'"${COLOR}"'",
      "user_id": "'"${USERID}"'"
    }
  }'

echo
