#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
export IMG_TAG=$(date +%F-%H-%M)
docker build -t mlapp:${IMG_TAG} .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -d -p 8000:80 --name mlapp mlapp:${IMG_TAG}
