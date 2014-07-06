FROM ubuntu:14.04
MAINTAINER Lucas Clemente <lucas@univedo.com>

RUN apt-get update
RUN apt-get install -q -y openjdk-7-jre-headless
RUN apt-get install -q -y build-essential cmake flex ruby2.0 unzip libssl-dev libboost-dev git curl
# Fix for https://bugs.launchpad.net/ubuntu/+source/ruby2.0/+bug/1310292
RUN ln -sf /usr/bin/ruby2.0 /usr/bin/ruby && ln -sf /usr/bin/gem2.0 /usr/bin/gem
RUN gem install bundler

RUN mkdir -p /root/.ssh && echo "UserKnownHostsFile = /data/known_hosts" > /root/.ssh/config

ADD http://mirrors.jenkins-ci.org/war/1.570/jenkins.war /opt/jenkins.war

ENV JENKINS_HOME /data
VOLUME /data
EXPOSE 8080
CMD ["java", "-jar", "/opt/jenkins.war"]
