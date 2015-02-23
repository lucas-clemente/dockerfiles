FROM java:7-jre
MAINTAINER lucas@clemente.io

RUN mkdir /jira &&\
  curl -L http://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-6.3.15.tar.gz \\
  | tar xz --strip=1 -C /jira

# RUN useradd --create-home --home-dir /jira-home --shell /bin/bash jira &&\
#   chown -R jira:jira /jira/logs /jira/temp /jira/work

ADD launch.sh /launch.sh

ENV JIRA_HOME /jira-home
ENV PROXY_NAME example.com

# USER jira
VOLUME /jira-home
EXPOSE 8080

CMD ["/launch.sh"]
