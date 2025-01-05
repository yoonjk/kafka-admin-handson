docker run --interactive \
           --network host \
           confluentinc/cp-kafkacat \
           kafkacat -b kafka:9092 \
                    -t testuser01 \
                    -K: \
                    -P <<EOF
1:FOO
2:BAR
3:TEST
4:demo
5:message1
6:message2
7:message3
EOF
