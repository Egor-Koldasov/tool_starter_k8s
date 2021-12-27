#!/bin/bash
kubectl apply -f $(dirname "$0") &&
kubectl rollout restart deployment tool-starter-api &&
kubectl rollout status deployment tool-starter-api
