FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y curl git
RUN curl -sSL https://get.haskellstack.org/ | sh

RUN stack setup

ENV PATH "$PATH:/root/.local/bin"

ADD stack-config.yaml /tmp/
RUN rm ~/.stack/config.yaml
RUN cp /tmp/stack-config.yaml ~/.stack/config.yaml
