FROM ubuntu:14.04
MAINTAINER Lucas Clemente <lucas@univedo.com>

RUN apt-get update && apt-get clean
RUN apt-get install -q -y openjdk-7-jre-headless && apt-get clean
ADD http://mirrors.jenkins-ci.org/war/1.570/jenkins.war /opt/jenkins.war

ENV JENKINS_HOME /data
VOLUME /data
EXPOSE 8080
CMD ["java", "-jar", "/opt/jenkins.war"]
