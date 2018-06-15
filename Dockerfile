
FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /welcome
WORKDIR /welcome
COPY Gemfile /welcome/Gemfile
COPY Gemfile.lock /welcome/Gemfile.lock
RUN bundle install
COPY . /welcome
#EXPOSE 3000
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]




