#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=officialdarnyc/mlapp:2022-08-18-13-11

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create namespace udaproject
kubectl create deployment --image=$dockerpath mlapp -n udaproject
kubectl expose deployment mlapp --port=80 --name=mlapp-http -n udaproject


# Step 3:
# List kubernetes pods
kubectl get pods -n udaproject

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/mlapp 8000:80 -n udaproject

