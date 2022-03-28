#syntax=docker/dockerfile:1
FROM alpine

RUN echo https://dl-cdn.alpinelinux.org/alpine/edge/testing >> \
  /etc/apk/repositories
RUN apt-get -y update && apt-get -y install termshark iptables \
  && rm -rf /var/lib/apt/lists/*

ENV XDG_CONFIG_HOME=/root/.config/
ENV TERM=xterm-truecolor

WORKDIR /root

COPY termshark .
COPY python .

# CMD termshark
