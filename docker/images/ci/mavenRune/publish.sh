#!/bin/bash

# Build and push debian images
curl -s https://registry.hub.docker.com/v1/repositories/maven/tags | jq -r '.[] | .name | select(contains("amazoncorretto") | not) | select(contains("onbuild") | not) | select(contains("alpine") | not)' | xargs -I {} sh -c 'docker build -t sygaldry/maven-rune:{} --build-arg BASE_IMAGE_VERSION={} -f debian.Dockerfile . && docker push sygaldry/maven-rune:{} && docker rmi sygaldry/maven-rune:{} && docker image prune -f'

# Build and push alpine images
curl -s https://registry.hub.docker.com/v1/repositories/maven/tags | jq -r '.[] | .name | select(contains("amazoncorretto") | not) | select(contains("onbuild") | not) | select(contains("alpine"))' | xargs -I {} sh -c 'docker build -t sygaldry/maven-rune:{} --build-arg BASE_IMAGE_VERSION={} -f alpine.Dockerfile . && docker push sygaldry/maven-rune:{} && docker rmi sygaldry/maven-rune:{} && docker image prune -f'

# Not currently building amazoncorretto because I can't create a sygaldry user
