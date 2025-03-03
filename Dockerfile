FROM alpine:3.21.3
LABEL maintainer="wxx9248 <wxx9248@wxx9248.top>"

RUN apk add --update --no-cache tftp-hpa

EXPOSE 69/udp
ENTRYPOINT ["in.tftpd"]
CMD ["-L", "--secure", "/var/tftpboot"]
