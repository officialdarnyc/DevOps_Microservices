#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=officialdarnyc/mlapp

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
export IMG_TAG=2022-08-18-13-11
echo "image tag: ${IMG_TAG}"
cat ~/dockerhub_pwd.txt | docker login --username officialdarnyc --password-stdin
docker tag mlapp:${IMG_TAG} $dockerpath:${IMG_TAG}

# Step 3:
# Push image to a docker repository
docker push $dockerpath:${IMG_TAG}
