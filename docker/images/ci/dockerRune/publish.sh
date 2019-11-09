#!/bin/bash

set +e

# Build and push debian images
curl -s https://registry.hub.docker.com/v1/repositories/docker/tags | jq -r '.[] | .name | select(contains("windowsservercore") | not)' | xargs -I {} sh -c 'docker build -t sygaldry/docker-rune:{} --build-arg BASE_IMAGE_VERSION={} -f alpine.Dockerfile . && docker push sygaldry/docker-rune:{} && docker rmi sygaldry/docker-rune:{} && docker image prune -f'
