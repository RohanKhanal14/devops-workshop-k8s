#!/bin/bash

# Deploy a Kubernetes deployment and service

kubectl apply -f ns.yml
kubectl apply -f dep.yml
kubectl apply -f pv.yml
kubectl apply -f pvc.yml
kubectl apply -f svc.yml

kubectl port-forward svc/my-service 8081:80 -n nginx
