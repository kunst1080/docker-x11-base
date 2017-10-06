#!/bin/bash

set -u

tag=$1
if [ $1 = xorg ]; then
    tag=latest
fi
echo docker build $1 -t kunst1080/x11:$tag
