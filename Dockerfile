FROM cxops/ruby:2.0.0-p481

MAINTAINER Bruz Marzolf, bruz@cx.com

RUN apt-get update -q
RUN apt-get install -qy nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

ADD app.conf /etc/nginx/sites-enabled/default

RUN gem install unicorn
