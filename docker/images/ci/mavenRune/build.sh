#!/bin/bash

# Build debian images
curl -s https://registry.hub.docker.com/v1/repositories/maven/tags | jq -r '.[] | .name | select(contains("amazoncorretto") | not) | select(contains("onbuild") | not) | select(contains("alpine") | not)' | xargs -I {} docker build -t sygaldry/maven-rune:{} --build-arg BASE_IMAGE_VERSION={} -f debian.Dockerfile .

# Build alpine images
curl -s https://registry.hub.docker.com/v1/repositories/maven/tags | jq -r '.[] | .name | select(contains("amazoncorretto") | not) | select(contains("onbuild") | not) | select(contains("alpine"))' | xargs -I {} docker build -t sygaldry/maven-rune:{} --build-arg BASE_IMAGE_VERSION={} -f alpine.Dockerfile .

# Not currently building amazoncorretto because I can't create a sygaldry user
