FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y curl git
RUN curl -sSL https://get.haskellstack.org/ | sh
RUN stack setup
