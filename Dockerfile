FROM alpine:latest
RUN apk update
RUN apk upgrade
RUN apk add vim
RUN apk add curl wget bash
RUN apk add nodejs yarn
# Build tools for stuff like Nokogiri
RUN apk add --no-cache build-base zlib-dev

# Install Ruby
RUN apk add ruby ruby-dev ruby-bundler ruby-nokogiri

# Install Rails
RUN gem install rails
RUN apk add sqlite sqlite-dev

# Git stuff
RUN apk add git
RUN apk add openssh

# Cleanup
RUN rm -rf /var/cache/apk/*

# Setup project
RUN mkdir /usr/app
WORKDIR /usr/app
RUN rails new . --skip-webpack-install
RUN bundle add bigdecimal
RUN bundle add json 
RUN sed "s/^gem 'tzinfo-data'.*/gem 'tzinfo-data'/g" Gemfile > Gemfile.new
RUN mv Gemfile.new Gemfile
RUN bundle update
RUN rails webpacker:install
