

# generate 10KB of random data
```bash
base64 /dev/urandom | head -c 10000 | egrep -ao "\w" | tr -d '\n' > file10kb.txt
```

# in a new shell: start a continuous random producer
```bash
bin/kafka-producer-perf-test.sh --topic first-topic --num-records 10000 --throughput 10 \
--payload-file file10kb.txt --producer-props acks=1 bootstrap.servers=kafka1:9092,kafka2:9092,kafka3:9092 --payload-delimiter A
```