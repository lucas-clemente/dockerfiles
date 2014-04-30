FROM ubuntu:14.04
MAINTAINER Lucas Clemente <lucas@clemente.io>

RUN echo "deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main" > /etc/apt/sources.list.d/ruby.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F5DA5F09C3173AA6
RUN apt-get update

RUN apt-get install -y git ruby2.1 ruby2.1-dev ruby-switch

RUN ruby-switch --set ruby2.1
RUN echo "gem: --no-rdoc --no-ri" >> /etc/gemrc
RUN gem install bundler
