FROM alpine:latest
RUN apk update && apk add bash

WORKDIR /app
COPY repeat.sh /app
COPY setup.sh /app
RUN . /app/setup.sh