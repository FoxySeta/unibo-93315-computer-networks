#syntax=docker/dockerfile:1
FROM alpine

COPY setup.sh .
RUN chmod +x setup.sh
RUN ./setup.sh
RUN rm setup.sh

ENV XDG_CONFIG_HOME=/root/.config/
ENV TERM=xterm-truecolor

WORKDIR /root
COPY termshark .
# CMD ["termshark"]
