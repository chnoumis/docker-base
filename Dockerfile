FROM alpine:3.3

# User root user to install software
USER root

# Install packages
RUN apk update && apk add \
  bash \ 
  ruby \
  wget \
  curl \
  tar \
  unzip

# Add user
RUN addgroup chnoumis && adduser -s /bin/bash -D -G chnoumis chnoumis

# Set the working directory to chnoumis user home directory
WORKDIR /opt/chnoumis

USER chnoumis
