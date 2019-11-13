ARG KUBECTL_VERSION=1.16.2
ARG ALPINE_VERSION=latest

FROM alpine:${ALPINE_VERSION}

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.16.0/bin/linux/amd64/kubectl && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin

ENV command=''
ENV args=''

COPY entrypoint.sh /home/sygaldry/entrypoint.sh
WORKDIR /home/sygaldry

ENTRYPOINT ["sh", "-c", "./entrypoint.sh"]
