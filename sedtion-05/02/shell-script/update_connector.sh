connector="$1"
connector_data="$2"
curl -i -X PUT http://localhost:8083/connectors/{$connector}/config \
     -H "Content-Type: application/json" \
     -d @$connector_data
