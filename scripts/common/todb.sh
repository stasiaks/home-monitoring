#/bin/sh

dbhost=""
org=""
bucket=""
precision="s"
authtoken=""
content="$1"

curl --request POST "http://$dbhost/api/v2/write?org=$org&bucket=$bucket&precision=$precision" \
        --header "Authorization: Token $authtoken" \
        --data-raw "$content"

