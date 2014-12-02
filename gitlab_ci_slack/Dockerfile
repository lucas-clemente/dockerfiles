FROM node:latest
MAINTAINER Lucas Clemente

RUN mkdir /app && cd /app && git clone https://github.com/claudetech/gitlab-ci-slack.git .
RUN cd /app && npm install

ENV CI_SERVER_URL ""
ENV SLACK_URL ""
ENV SLACK_USERNAME ""
ENV PORT 5000

EXPOSE 5000
CMD cd /app && npm start
