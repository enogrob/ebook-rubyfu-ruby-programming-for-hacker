FROM ruby:2.3.4
MAINTAINER enogrob@gmail.com

# Install MongoDB.
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927 \
  && apt-get update \
  && apt-get install -y build-essential libreadline-dev libssl-dev libpq5 libpq-dev \
  libreadline5 libsqlite3-dev libpcap-dev git-core autoconf postgresql pgadmin3 curl zlib1g-dev \
  libxml2-dev libxslt1-dev vncviewer libyaml-dev curl nmap --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Deploy confs app
WORKDIR /usr/src/app
COPY . ./
RUN gem install bundler && bundle install 
