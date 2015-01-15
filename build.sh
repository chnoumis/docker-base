#!/bin/sh

. ./setenv.sh
sudo docker build -t base-jdk:${DOCKER_VERSION} .