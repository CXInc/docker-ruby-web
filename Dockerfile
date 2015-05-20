FROM ruby:2.2.2

RUN apt-get update -q && \
    apt-get install -qy nginx && \
    echo "daemon off;" >> /etc/nginx/nginx.conf

ADD app.conf /etc/nginx/sites-enabled/default
ADD puma.rb /etc/puma/puma.rb
ADD start-service /usr/bin/start-service

RUN chmod a+x /usr/bin/start-service && \
    gem install puma
