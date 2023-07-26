#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
#docker build . -t $DOCKER_USERNAME/machine-learning-microservice
# RUN IN MAC M1
docker build --platform=linux/amd64 . -t $DOCKER_USERNAME/machine-learning-microservice

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
#docker run -d -p "8000:80" $DOCKER_USERNAME/machine-learning-microservice
# RUN IN MAC M1
docker run --platform=linux/amd64 -d -p "8000:80" $DOCKER_USERNAME/machine-learning-microservice
