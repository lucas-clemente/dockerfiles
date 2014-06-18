FROM ubuntu:14.04
MAINTAINER Lucas Clemente <lucas@clemente.io>

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update

RUN apt-get install -y ruby2.1 ruby2.1-dev
RUN apt-get install -y build-essential git libsqlite3-dev libssl-dev

RUN update-alternatives --set ruby /usr/bin/ruby2.1
RUN update-alternatives --set gem /usr/bin/gem2.1
RUN echo "gem: --no-rdoc --no-ri" >> /etc/gemrc
RUN gem install bundler
