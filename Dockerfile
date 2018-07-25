FROM python:3.6-alpine

RUN apk update && apk add --no-cache --virtual .build-deps gcc musl-dev mariadb-dev && \
    pip install mysqlclient && \
    apk add --virtual .runtime-deps mariadb-client-libs && \
    apk del .build-deps && \
    rm -rf /var/cache/apk/* /tmp/*
