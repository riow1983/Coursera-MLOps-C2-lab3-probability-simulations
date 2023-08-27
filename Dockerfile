FROM alpine:latest
RUN apk update && apk add bash

WORKDIR /app
COPY repeat.sh /app
COPY setup.sh /app
# RUN chmod +x setup.sh
# RUN setup.sh
RUN chmod +x setup.sh &&\
    setup.sh
