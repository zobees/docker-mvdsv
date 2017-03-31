FROM alpine
MAINTAINER cliffrowley@gmail.com

USER root

ENV QW_DIR=/qw

RUN mkdir $QW_DIR

WORKDIR $QW_DIR

ADD files/mvdsv $QW_DIR/mvdsv
ADD files/LICENSE $QW_DIR/LICENSE.mvdsv