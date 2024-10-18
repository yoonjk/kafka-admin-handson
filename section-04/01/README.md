
JMX Jolokia
```bash
-javaagent:/path/to/ jolokia-agent-jvm-javaagent.jar=port=8778,host=0.0.0.0
```

curl localhost:8778/jolokia/read/kafka.server:type=BrokerTopicMetrics,name=MessagesInPerSec