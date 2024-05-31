FROM ruby:3.0

WORKDIR /srv/jekyll

VOLUME /srv/jekyll

RUN gem install jekyll bundler

COPY Gemfile Gemfile.lock ./

RUN bundle install

EXPOSE 4000

CMD ["jekyll", "serve", "--host", "0.0.0.0"]
