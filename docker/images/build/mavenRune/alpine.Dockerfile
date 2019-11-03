ARG BASE_IMAGE_VERSION=alpine

FROM maven:${BASE_IMAGE_VERSION}

ENV opts=''
ENV stages='clean install'

COPY entrypoint.sh /home/sygaldry/entrypoint.sh
WORKDIR /home/sygaldry

ENTRYPOINT ["sh", "-c", "./entrypoint.sh"]
