#!/bin/bash
export CLASSPATH=$CLASSPATH:/app/kafka/plugins/kafka-connect-jdbc/*:/app/kafka/plugins/debezium-connector-jdbc/*

bin/connect-distributed.sh config/connect-distributed-01.properties
