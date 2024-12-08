connector="$1"
curl -i -X POST http://localhost:8083/connectors \
     -H "Content-Type: application/json" \
     -d @$connector
