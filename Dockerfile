#syntax=docker/dockerfile:1
FROM alpine

RUN echo https://dl-cdn.alpinelinux.org/alpine/edge/community >> \
  /etc/apk/repositories
RUN apk update && apk add termshark iptables

ENV XDG_CONFIG_HOME=/root/.config/
ENV TERM=xterm-truecolor

WORKDIR /root

COPY termshark .
COPY python .

# CMD termshark
