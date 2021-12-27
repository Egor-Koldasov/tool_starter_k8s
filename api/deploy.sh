#!/bin/bash
kubectl apply -f . &&
kubectl rollout restart deployment tool-starter-api &&
kubectl rollout status deployment tool-starter-api
