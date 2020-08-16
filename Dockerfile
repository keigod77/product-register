FROM ruby:2.5
RUN apt-get update
RUN apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    yarn
RUN apt-get install -y postgresql-client
    

WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install