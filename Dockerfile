FROM debian:8.0

MAINTAINER chnoumis <it@chnoumis.com>

# User root user to install software
USER root

# Install packages
RUN apt-get update && apt-get install -y \
  ruby \
  wget \
  curl \
  tar \
  unzip

# Add user
RUN groupadd chnoumis && adduser --system --home /opt/chnoumis --ingroup chnoumis chnoumis
  
# Set the working directory to chnoumis user home directory
WORKDIR /opt/chnoumis

USER chnoumis
