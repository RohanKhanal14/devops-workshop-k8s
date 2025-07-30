#!/bin/bash

# Deploy a Kubernetes deployment and service

kubectl apply -f ns.yml
kubectl apply -f dep.yml
kubectl apply -f pv.yml
kubectl apply -f pvc.yml
kubectl apply -f svc.yml
kubectl apply -f frontend-dep.yml -n nginx
kubectl apply -f frontend-svc.yml -n nginx
kubectl apply -f ingress.yml -n nginx

# minikube addons enable ingress
#  2020  clear
#  2021  kubectl get svc -n nginx
#  2022  kubectl apply -f ingress.yml -n nginx
#  2023  kubectl get svc -n nginx
#  2024  kubectl get ingress -n nginx
#  2025  kubectl port-forward ingress/example-ingress  8082:80 -n nginx
#  2026  kubectl get services -n nginx
#  2027  kubectl get pods -n nginx
#  2028  kubectl port-forward svc/nginx-ingress-controller 8082:80 -n nginx

#kubectl port-forward svc/my-service 8081:80 -n nginx
kubectl get svc -n ingress-nginx
kubectl port-forward -n ingress-nginx service/ingress-nginx-controller 8082:80
