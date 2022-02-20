FROM ubuntu:20.04

ENV TZ=Asia/Tashkent
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y tzdata git curl default-jdk maven

RUN git clone git@github.com:boxfuse/boxfuse-sample-java-war-hello.git /usr/local/boxfuse-sample-java-war-hello
RUN  mvn package -pf /usr/local/boxfuse-sample-java-war-hello
