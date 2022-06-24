FROM alpine:3.16

COPY grpcurl /usr/local/bin

RUN apk add --no-cache iproute2 curl iputils
