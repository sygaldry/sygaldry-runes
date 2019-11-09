ARG BASE_IMAGE_VERSION=stable

FROM docker:${BASE_IMAGE_VERSION}

ENV command=''
ENV args=''

COPY entrypoint.sh /home/sygaldry/entrypoint.sh
WORKDIR /home/sygaldry

ENTRYPOINT ["sh", "-c", "./entrypoint.sh"]
