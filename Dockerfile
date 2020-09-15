FROM  python:3.8-alpine

LABEL maintainer="PandaDev"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip intall -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app 

RUN adduser -D user
USER user