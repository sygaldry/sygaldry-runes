FROM python:3-alpine

ARG AWSCLI_VERSION=1.16.280

ENV command=''
ENV args=''

RUN pip install awscli==${AWSCLI_VERSION}

COPY entrypoint.sh /home/sygaldry/entrypoint.sh
WORKDIR /home/sygaldry

ENTRYPOINT ["sh", "-c", "./entrypoint.sh"]
