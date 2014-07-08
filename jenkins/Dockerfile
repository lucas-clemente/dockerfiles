FROM lclemente/ruby2:latest
MAINTAINER Lucas Clemente <lucas@univedo.com>

# Java
RUN apt-get install -q -y openjdk-7-jre-headless

# Univedo building stuff
RUN apt-get install -q -y cmake flex unzip libboost-dev curl

RUN mkdir -p /root/.ssh && echo "UserKnownHostsFile = /data/known_hosts" > /root/.ssh/config

ADD http://mirrors.jenkins-ci.org/war/1.570/jenkins.war /opt/jenkins.war

ENV JENKINS_HOME /data
ENV JAVA_TOOL_OPTIONS "-Dfile.encoding=UTF8"
VOLUME /data
EXPOSE 8080
CMD ["java", "-jar", "/opt/jenkins.war"]
