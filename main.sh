#! /bin/bash

IP=$(eval "curl ifconfig.me")
zoneid=""
email=""
apikey=""
domain=""

zone=$(curl --request GET \
  --url https://api.cloudflare.com/client/v4/zones/$zoneid/dns_records \
  --header 'Content-Type: application/json' \
  --header "X-Auth-Email: $email" \
  --header "X-Auth-Key: $apikey")

testvar=$(echo "$zone" | jq -r '.result[0].id')

curl --request PUT \
  --url https://api.cloudflare.com/client/v4/zones/$zoneid/dns_records/$testvar \
  --header 'Content-Type: application/json' \
  --header "X-Auth-Email: $email" \
  --header "X-Auth-Key: $apikey" \
  --data "{\"content\": \"$IP\", \"name\": \"$domain\", \"proxied\": true, \"type\": \"A\", \"comment\": \"Domain verification record\", \"ttl\": 3600}"
