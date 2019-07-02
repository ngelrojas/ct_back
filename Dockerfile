FROM python:3.7-alpine
MAINTAINER ngel rojas redsyscom

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /back
WORKDIR /back
COPY ./back /back

RUN adduser -D user
USER user