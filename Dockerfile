FROM alpine:3.3

# User root user to install software
USER root

# Install packages
RUN apk update && apk add \
  ruby \
  wget \
  curl \
  tar \
  unzip

# Add user
RUN addgroup chnoumis && adduser -ms /bin/bash -D -G chnoumis chnoumis

# Set the working directory to chnoumis user home directory
WORKDIR /opt/chnoumis

USER chnoumis
