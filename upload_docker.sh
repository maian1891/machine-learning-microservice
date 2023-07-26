#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# $DOCKER_USERNAME will be export to system environment,
# like if we use circleci, we can create DOCKER_USERNAME variable
dockerpath=$DOCKER_USERNAME/machine-learning-microservice

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo "Login docker..."
# $DOCKER_PASSWORD will be export to system environment,
# like if we use circleci, we can create DOCKER_PASSWORD variable
echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAM --password-stdin docker.io

# Step 3:
# Push image to a docker repository
docker push $dockerpath
