#!/bin/bash

rm -rf dependencies
mkdir -p dependencies

docker run --rm \
    -v "$PWD"/dependencies:/lambda/opt \
    lambci/yumda:2 yum install -y git GraphicsMagick jp2a

# sls invoke local --docker -f hello-world
