#!/bin/bash

set -u

IMAGE_NAME=kunst1080/x11-base
docker rmi $IMAGE_NAME
docker build . -t $IMAGE_NAME
