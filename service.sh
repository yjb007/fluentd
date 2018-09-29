#!/bin/bash

set -x

docker rm -f pilipa-inside-fluentd
docker run --restart=always -d \
        --name pilipa-inside-fluentd \
        --env FLUENTD_CONF=fluent.conf \
	-v /root/operations/inside/fluentd/fluent.conf:/fluentd/etc/fluent.conf \
        -p 8888:8888 \
        -p 24224:24224 \
fluentd/yujianbo:20180829
