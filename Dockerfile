FROM python:3.6-alpine

RUN apk add --no-cache gcc musl-dev mariadb-dev && \
    pip install mysqlclient && \
    apk del --purge gcc musl-dev && \
    rm -rf /var/cache/apk/*
