FROM ruby:3.3.1
EXPOSE 4000
COPY Gemfile .
RUN gem install jekyll bundler && \
    bundle install
CMD bundle exec jekyll serve --force-polling -H 0.0.0.0 -p 4000

