#!/bin/sh
build_image=registry.vizion.ai/library/rabbitmq-operator:v1.0

export GOROOT=/usr/local/Cellar/go/1.12.7/libexec
export GO111MODULE=on
operator-sdk generate k8s --verbose
operator-sdk build $build_image
docker push $build_image
