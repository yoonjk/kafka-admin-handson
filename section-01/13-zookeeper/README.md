
#### zookeeper 시작 
pwd
/app/kafka

bin/zookeeper-server-start.sh config/zookeeper.properties

#### zookeeper 테스트 
VM서버IP:8080/commands/stat
또는 
localhost
curl localhost:8900/commands/ruok
curl localhost:8900/commands/mntr
curl localhost:8900/commands/conf
curl localhost:8900/commands/srvr
curl localhost:8900/commands/envi
curl localhost:8900/commands/dump

dataDir=/app/zookeeper

cat /app/zookeeper/myid

zookeeper1서버
echo “1” > /app/zookeeper/myid

zookeeper2 서버
echo “2” > /app/zookeeper/myid

zookeeper3 서버
echo “3” > /app/zookeeper/myid

bin/zookeeper-server-start.sh config/zookeeper.properties

bin/zookeeper-server-start.sh -daemon config/zookeeper.properties

echo "stat" | nc zookeeper1 2181; echo
echo "stat" | nc zookeeper2 2181; echo
echo "stat" | nc zookeeper3 2181; echo


zookeeper-shell.sh localhost:2181
ls /
create /my-node "some data"

ls /
get /my-node

get -s /my-node
stat /my-node 
set /my-node "newData"
set /my-node "changedData" 
get -s /my-node

vi /usr/lib/systemd/system/zookeeper.service


systemctl daemon-reload
systemctl enable zookeeper.service
systemctl start zookeeper
systemctl status zookeeper
