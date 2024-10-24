
# 인증없이 접근 
# hostname 은 VM의 public IP
export KAFKA_JMX_OPTS="-Djava.rmi.server.hostname=VM Public IP \
-Dcom.sun.management.jmxremote=true \
-Dcom.sun.management.jmxremote.authenticate=false \
-Dcom.sun.management.jmxremote.ssl=false \
-Dcom.sun.management.jmxremote.port=9393"

# ID/PW 인증후 접근
export KAFKA_JMX_OPTS="-Dcom.sun.management.jmxremote.local.only=false \
-Djava.rmi.server.hostname=VM Public IP \
-Dcom.sun.management.jmxremote.rmi.port=9393 \
-Dcom.sun.management.jmxremote=true \
-Dcom.sun.management.jmxremote.authenticate=true \
-Dcom.sun.management.jmxremote.ssl=false  \
-Dcom.sun.management.jmxremote.password.file=/app/kafka/jmxremote/jmxremote.password \
-Dcom.sun.management.jmxremote.access.file=/app/kafka/jmxremote/jmxremote.access \
-Dcom.sun.management.jmxremote.port=9393"


export KAFKA_JMX_OPTS="-Dcom.sun.management.jmxremote.local.only=false -Djava.rmi.server.hostname=119.81.215.35 -Dcom.sun.management.jmxremote.rmi.port=9393 -Dcom.sun.management.jmxremote.host=119.81.215.35 -Dcom.sun.management.jmxremote=true -Dcom.sun.management.jmxremote.authenticate=true -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.password.file=/app/kafka/jmxremote/jmxremote.password -Dcom.sun.management.jmxremote.access.file=/app/kafka/jmxremote/jmxremote.access -Dcom.sun.management.jmxremote.port=9393"
