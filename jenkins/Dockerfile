FROM lclemente/ruby2:latest
MAINTAINER Lucas Clemente <lucas@univedo.com>

# Java
RUN apt-get install -q -y openjdk-7-jre-headless

# Node
RUN apt-get install -q -y nodejs phantomjs

# Univedo building stuff
RUN apt-get install -q -y cmake flex unzip libboost-dev curl

# Go
RUN curl https://storage.googleapis.com/golang/go1.3.linux-amd64.tar.gz | tar -C /usr/local -xzf -
ENV PATH /usr/local/go/bin:$PATH

# SSH Setup
RUN mkdir -p /root/.ssh && echo "UserKnownHostsFile = /data/known_hosts" > /root/.ssh/config

ADD http://mirrors.jenkins-ci.org/war/1.570/jenkins.war /opt/jenkins.war

ENV JENKINS_HOME /data
ENV JAVA_TOOL_OPTIONS "-Dfile.encoding=UTF8"
VOLUME /data
EXPOSE 8080
CMD ["java", "-jar", "/opt/jenkins.war"]
