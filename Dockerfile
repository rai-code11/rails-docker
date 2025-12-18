FROM ruby:3.4.5
RUN apt-get update -qq && apt-get install -y \ 
nodejs \
postgresql-client \
yarn
WORKDIR /rails_docker
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .