FROM python:3-alpine

RUN apk add --update --upgrade --no-cache bash

# install requirements
ADD requirements*.txt ./
RUN pip install --no-cache-dir -r requirements.txt

ADD assets /opt/resource
RUN chmod +x /opt/resource/*

ENTRYPOINT [ "/bin/bash" ]
