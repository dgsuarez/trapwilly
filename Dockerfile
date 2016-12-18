FROM ruby:2.3

RUN apt-get update -qq && apt-get install -y build-essential \
                                             libpq-dev nodejs \
                                             libleptonica-dev libtesseract-dev

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle install

