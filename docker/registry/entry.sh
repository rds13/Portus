#!/bin/bash

if [ ! -e /registry/config.yml ]; then
  sed -e "s/DOCKER_HOST/${DOCKER_HOST}/g" /registry/config.yml.template > /registry/config.yml
fi

registry /registry/config.yml
