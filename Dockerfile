FROM debian:8.0

MAINTAINER chnoumis <it@chnoumis.com>

# User root user to install software
USER root

# Add user
RUN groupadd chnoumis
RUN useradd -s /sbin/nologin -g chnoumis chnoumis

# Install packages
RUN apt-get update && apt-get install -y \
  ruby \
  wget \
  curl \
  tar \
  unzip
  
# Set the working directory to chnoumis user home directory
WORKDIR /opt/chnoumis

USER chnoumis