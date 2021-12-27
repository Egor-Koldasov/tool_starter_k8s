#!/bin/bash
source $(dirname "$0")/../k8s.env
echo $DOCKER_REGISTRY
DOCKER_REGISTRY=${DOCKER_REGISTRY-localhost:5000}
echo $DOCKER_REGISTRY
docker image build . -t "tool_starter_api:`git rev-parse --verify HEAD`" -t "tool_starter_api:latest"  -t "$DOCKER_REGISTRY/tool_starter_api:latest" -f DockerfileProd
docker push $DOCKER_REGISTRY/tool_starter_api --all-tags
