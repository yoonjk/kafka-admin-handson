

bin/kafka-server-start.sh config/server.properties

bin/kafka-server-start.sh -daemon config/server.properties

bin/kafka-topics.sh --broker-list kafka1:9092 --create --topic second-topic --replication-factor 3 --partitions 1

bin/kafka-topics.sh --zookeeper zookeeper1:2181/kafka --create --topic first-topic --replication-factor 1 --partitions 3
# produce data to the topic
bin/kafka-console-producer.sh --broker-list kafka1:9092 --topic second-topic
hi
hello


bin/kafka-console-consumer.sh --bootstrap-server kafka2:9092 --topic first-topic --from-beginning