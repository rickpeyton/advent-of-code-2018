FROM ruby:latest
WORKDIR /app
COPY Gemfile* ./
RUN bundle
COPY . ./
CMD ["bundle", "exec", "rspec"]
