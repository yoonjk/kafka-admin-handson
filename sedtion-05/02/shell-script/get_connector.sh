connector="$1"
curl -i -X GET http://localhost:8083/connectors/{$connector}/config \
     -H "Content-Type: application/json" 
