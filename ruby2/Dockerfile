FROM ubuntu:14.04
MAINTAINER Lucas Clemente <lucas@clemente.io>

RUN apt-get install python-software-properties
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update

RUN apt-get install -y git ruby2.1 ruby2.1-dev ruby-switch

RUN ruby-switch --set ruby2.1
RUN echo "gem: --no-rdoc --no-ri" >> /etc/gemrc
RUN gem install bundler
