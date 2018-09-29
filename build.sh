#!/bin/bash

set -ex

export IMAGE_NAME=fluentd/yujianbo:20180829
docker build --no-cache --pull -t $IMAGE_NAME ./

