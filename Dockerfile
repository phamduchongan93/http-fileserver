FROM ubuntu:lastest
MAINTAINER anpham <vincentpham1993@gmail.com>


COPY ./requirement.txt ./requirement.txt
RUN apt install apache2

RUN mkdir /app
WORKDIR /app

COPY ./app /app

RUN adduser -D user
USER user

