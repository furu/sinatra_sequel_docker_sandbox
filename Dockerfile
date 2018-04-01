FROM ruby:2.4.3

RUN apt-get update && apt-get install -yq mysql-client libmysqlclient-dev less

WORKDIR /app

COPY Gemfile Gemfile.lock /app/
RUN bundle install --path /bundle

EXPOSE 9292

CMD ["bundle", "exec", "pry"]
