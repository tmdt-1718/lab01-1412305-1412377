FROM ruby
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /lab01
ADD Gemfile /lab01/Gemfile
ADD Gemfile.lock /lab01/Gemfile.lock
RUN bundle install
ADD . /lab01