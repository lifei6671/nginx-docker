FROM nginx:1.11.0-alpine

MAINTAINER Minho <longfei6671@163.com>

RUN groupadd -f www-data
RUN useradd -g www-data www-data

ADD conf/nginx.conf /etc/nginx/nginx.conf
ADD conf/fastcgi.conf /etc/nginx/fastcgi.conf

WORKDIR /var/www/

EXPOSE 80 443