# Docker image for springboot file run
# VERSION 0.0.1
# Author: ltz
# 基础镜像使用java
FROM java:8
# 作者
MAINTAINER liaotianzheng <liaotianzheng@qq.com>
VOLUME /work/logs/config:/logs
ADD proviceserver-1.0-SNAPSHOT.jar proviceserver.jar
EXPOSE 9998
RUN bash -c "touch /proviceserver.jar"
ENTRYPOINT ["java", "-jar", "proviceserver.jar","> /logs/ltzProvice.log"]