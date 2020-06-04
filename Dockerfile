# Docker image for springboot file run
# VERSION 0.0.1
# Author: ltz
# 基础镜像使用java
FROM java:8
# 作者
MAINTAINER liaotianzheng <liaotianzheng@qq.com>
VOLUME /work/logs/config:/logs
ADD ltzserver-1.0-SNAPSHOT.jar ltzConfig.jar
EXPOSE 9999
RUN bash -c "touch /ltzConfig.jar"
ENTRYPOINT ["java", "-jar", "ltzConfig.jar","> /logs/ltzConfig.log"]