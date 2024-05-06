#!/bin/bash

IMAGE_REGISTRY=${WUTONG_REGISTRY:-'swr.cn-southwest-2.myhuaweicloud.com/wutong'}
IMAGE_NAME=virt-vnc
VERSION=v0.1.0

docker buildx use swrbuilder || docker buildx create --use --name swrbuilder --driver docker-container --driver-opt image=swr.cn-southwest-2.myhuaweicloud.com/wutong/buildkit:stable
docker buildx build --platform linux/amd64,linux/arm64 --push -t ${IMAGE_REGISTRY}/${IMAGE_NAME}:${VERSION} -f Dockerfile . 
# docker buildx rm swrbuilder