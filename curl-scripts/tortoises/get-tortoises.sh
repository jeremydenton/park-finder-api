#!/bin/bash

curl "http://localhost:4741/tortoises" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo