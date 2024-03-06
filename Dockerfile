  FROM ruby:3.2.3
  RUN apt-get update && apt-get install -y
  WORKDIR /app
  COPY Gemfile* .
  RUN bundle install
  COPY . .
  EXPOSE 3000
  CMD ["rails", "server", "-b", "0.0.0.0"]