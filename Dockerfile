FROM cxops/ruby:2.0.0-p481

MAINTAINER Bruz Marzolf, bruz@cx.com

RUN apt-get update -q
RUN apt-get install -qy nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

ADD app.conf /etc/nginx/sites-enabled/default
ADD unicorn.rb /etc/unicorn/unicorn.rb
ADD start-service /usr/bin/start-service

RUN chmod a+x /usr/bin/start-service

RUN gem install unicorn
