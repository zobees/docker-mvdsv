FROM ubuntu
MAINTAINER cliffrowley@gmail.com

USER root

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get -y update && \
    apt-get install -q -y --no-install-recommends \
    ca-certificates build-essential git libc6-dev-i386 gcc-multilib

ENV BUILD_DIR=/build \
    QW_DIR=/qw

WORKDIR $BUILD_DIR

CMD ./build.sh
