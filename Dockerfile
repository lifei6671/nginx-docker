FROM nginx:1.11.0-alpine

MAINTAINER Minho <longfei6671@163.com>

RUN /usr/sbin/groupadd -f www-data
RUN /usr/sbin/useradd -g www-data www-data

ADD conf/nginx.conf /etc/nginx/nginx.conf
ADD conf/fastcgi.conf /etc/nginx/fastcgi.conf

WORKDIR /var/www/

EXPOSE 80 443