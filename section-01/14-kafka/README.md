

nc -vz localhost 9092
nc -vz kafka1 9092
nc -vz kafka2 9092
nc -vz kafka3 9092


bin/kafka-server-start.sh config/server.properties

bin/kafka-server-start.sh -daemon config/server.properties

bin/kafka-topics.sh --broker-list kafka1:9092 --create --topic second-topic --replication-factor 3 --partitions 1

bin/kafka-topics.sh --zookeeper zookeeper1:2181/kafka --create --topic first-topic --replication-factor 1 --partitions 3
# produce data to the topic
bin/kafka-console-producer.sh --broker-list kafka1:9092 --topic second-topic
hi
hello


bin/kafka-console-consumer.sh --bootstrap-server kafka2:9092 --topic first-topic --from-beginning

vi /usr/lib/systemd/system/kafka.service


systemctl daemon-reload
systemctl enable kafka.service
systemctl start kafka
systemctl status kafka

managed_etc_hosts 를 False로 설정하고 저장
```bash
vi /etc/cloud/cloud.cfg

manage_etc_hosts False
```

nc -vz localhost 2181
nc -vz localhost 9092


bin/zookeeper-shell.sh localhost:2181

ls /brokers/ids
ls /brokers/topics

