
mkdir ~/kafdrop
cd ~/kafdrop

## docker-compose 로 실행
docker-compose up -d 

```yaml
version: "3.1"
services:
  kafdrop:
    image: obsidiandynamics/kafdrop
    restart: "no"
    ports:
      - "9020:9000"
    environment:
      KAFKA_BROKERCONNECT: "kafka1:9092,kafka2:9092,kafka3:9092"
    extra_hosts:
      - "kafka1:10.117.25.140"
      - "kafka2:10.117.25.151"
      - "kafka3:10.66.219.170"
```


## docker로 실행
```bash
docker run -d -p 9000:9000 \
  -e KAFKA_BROKERCONNECT=<KAFKA_BROKER_URL:PORT> \
  -e JVM_OPTS="-Xms32M -Xmx64M" \
  --name kafdrop obsidiandynamics/kafdrop
```  