#!/bin/sh

. ./setenv.sh
sudo docker build -t base:${DOCKER_VERSION} .
