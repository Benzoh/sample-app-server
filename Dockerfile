FROM ruby:2.5.1
ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /sample-app
WORKDIR /sample-app

ADD ./html/sample-app/Gemfile /sample-app/Gemfile
ADD ./html/sample-app/Gemfile.lock /sample-app/Gemfile.lock

RUN bundle install
ADD ./html/sample-app/ /sample-app