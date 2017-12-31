#!/bin/bash

set -u

IMAGE=kunst1080/x11-base
docker rmi $IMAGE
docker build . -t $IMAGE
