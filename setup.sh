# setup.sh
echo https://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
apk update
apk add termshark
