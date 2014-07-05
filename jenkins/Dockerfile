FROM ubuntu:14.04
MAINTAINER Lucas Clemente <lucas@univedo.com>

RUN apt-get update
RUN apt-get install -q -y openjdk-7-jre-headless
RUN apt-get install -q -y build-essential cmake flex ruby2.0 unzip libssl-dev libboost-dev git curl
RUN mkdir -p /root/.ssh && echo "UserKnownHostsFile = /data/known_hosts" > /root/.ssh/config
ADD http://mirrors.jenkins-ci.org/war/1.570/jenkins.war /opt/jenkins.war

ENV JENKINS_HOME /data
VOLUME /data
EXPOSE 8080
CMD ["java", "-jar", "/opt/jenkins.war"]
