#!/bin/bash

connector="$1"
curl --location --request DELETE http://localhost:8083/connectors/$connector
