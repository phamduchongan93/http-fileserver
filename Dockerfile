FROM ubuntu:latest
MAINTAINER vincentpham <vincentpham1993@gmail.com>

RUN apt update
RUN apt install -y apache2 apache2-utils

RUN mkdir /app
COPY  ./app /app 

RUN cp -vr /app/ /var/www/html/
WORKDIR /app

ENV APACHE_RUN_USER user

ENV APACHE_RUN_USER user
ENV APACHE_RUN_GROUP user
ENV APACHE_PID_FILE user /var/run/apache2.pid
ENV APACHE_RUN_DIR user /var/run/apache2
ENV APACHE_LOCK_DIR user /var/lock/apache2
ENV APACHE_LOG_DIR user /var/log/apache2
ENV LANG C

CMD "/usr/sbin/apache2","-D","FOREGROUND"]

EXPOSE 80

