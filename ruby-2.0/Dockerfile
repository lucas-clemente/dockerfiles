FROM ubuntu:13.10
MAINTAINER Lucas Clemente <lucas@clemente.io>

RUN apt-get update
RUN apt-get install -y curl build-essential ruby2.0 ruby2.0-dev libpq-dev libsqlite3-dev
RUN echo "gem: --no-rdoc --no-ri" >> /etc/gemrc
RUN gem install rubygems-update
RUN update_rubygems
RUN gem install bundler rake
