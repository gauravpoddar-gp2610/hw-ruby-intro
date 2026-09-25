FROM ruby:3.3.8

RUN gem install bundler

WORKDIR /app

COPY Gemfile /app/
COPY lib/ /app/lib/
COPY spec/ /app/spec/
COPY ./run_specs.sh /app/

RUN chmod +x ./run_specs.sh
RUN bundle install

CMD ["./run_specs.sh"]
