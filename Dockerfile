FROM ruby:2.7

RUN mkdir /projects && gem install bundler jekyll && bundle config set path 'vendor/bundle'
RUN ln -s /usr/lib/x86_64-linux-gnu/libffi.so.7 /usr/lib/x86_64-linux-gnu/libffi.so.6
ENV APP_ROOT /projects
WORKDIR $APP_ROOT
