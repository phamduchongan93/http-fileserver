FROM ubuntu
MAINTAINER vincentpham <vincentpham1993@gmail.com>

RUN apt update
RUN apt install -y apache2 apache2-utils

RUN mkdir /app
COPY  ./app /app 

RUN cp -vr /app/ /var/www/html/
WORKDIR /app

CMD systemctl start httpd

RUN useradd -m user
USER user

EXPOSE 80

