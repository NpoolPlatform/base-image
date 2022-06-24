#!/bin/bash
set -eo pipefail

GRPC_URL='https://github.com/fullstorydev/grpcurl/releases/download/v1.8.6/grpcurl_1.8.6_linux_x86_64.tar.gz'

echo "set all_proxy=$all_proxy"
set all_proxy=$all_proxy

rm -f /tmp/grpcurl_1.8.6_linux_x86_64.tar.gz* && \
  wget $GRPC_URL -P /tmp && \
  tar xf grpcurl_1.8.6_linux_x86_64.tar.gz -C .
