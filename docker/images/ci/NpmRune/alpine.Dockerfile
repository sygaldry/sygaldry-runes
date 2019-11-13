ARG BASE_IMAGE_VERSION=alpine

FROM node:${BASE_IMAGE_VERSION}

ENV command=''
ENV args=''

COPY entrypoint.sh /home/sygaldry/entrypoint.sh
WORKDIR /home/sygaldry

ENTRYPOINT ["sh", "-c", "./entrypoint.sh"]
