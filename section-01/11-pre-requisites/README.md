# Kafka 관리자 과정 실습


## kafka Cluster 설치 
apache kafka를 다음의 [링크](khttps://kafka.apache.org/downloads)에서 [2.8.2버전](https://archive.apache.org/dist/kafka/2.8.2/kafka_2.13-2.8.2.tgz)을 다운로드 받습니다.

```bash
yum update -y
yum install -y yum-utils
wget https://archive.apache.org/dist/kafka/2.8.2/kafka_2.13-2.8.2.tgz
mkdir /app
sudo tar xvzf kafka_2.13-2.8.2.tgz -C /app
cd /app
mv kafka_2.13-2.8.2 kafka

```

## OpenJdk 11 설치 
JDK11 이 설치되지 않았다면 JDK11을 설치합니다.
Jdk를 설치하기 위해  YUM 리포지토리에서 제공하는 OpenJDK 목록을 확인합니다.  
```bash
yum list java*jdk-devel
```
jdk 설치하기  
```bash
yum install -y java-11-openjdk-devel.x86_64
```