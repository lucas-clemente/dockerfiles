FROM ubuntu:13.10
MAINTAINER Lucas Clemente <lucas@clemente.io>

RUN echo "deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main" > /etc/apt/sources.list.d/ruby.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F5DA5F09C3173AA6
RUN apt-get update
RUN apt-get install -y ruby2.1
#RUN apt-get install -y curl build-essential ruby2.0 ruby2.0-dev libpq-dev libsqlite3-dev
RUN echo "gem: --no-rdoc --no-ri" >> /etc/gemrc
#RUN gem install rubygems-update
#RUN update_rubygems
RUN gem install bundler rake
