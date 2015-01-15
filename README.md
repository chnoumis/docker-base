# Base Docker image for Chnoumis projects

This project is a debian version of the original <a class="btn btn-primary" href="https://github.com/JBoss-Dockerfiles/base">jboss/base</a> project.

This repository contains base image that is used to build the portfolio of Docker images for Chnoumis projects. 

## Base image

This image is used as a base image for *all* Chnoumis images. It provides a base layer that includes:

1. A `chnoumis` user with home directory set to `/opt/chnoumis`
2. A few tools that may be useful when extending the image or installing software, like `unzip`.

### Operating system

This image uses Debian 8.0.

### Working directory

This image has the working directory set to `/opt/chnoumis`, which is the `chnoumis` user home directory at the same time.

### Availability

The `Dockerfile` is available in the `master` branch and is built in the Docker HUB as `chnoumis/base:latest`.

