#!/bin/bash

# Push all images
curl -s https://registry.hub.docker.com/v1/repositories/maven/tags | jq -r '.[] | .name | select(contains("amazoncorretto") | not) | select(contains("onbuild") | not)' | xargs -I {} docker push sygaldry/maven-rune:{}
