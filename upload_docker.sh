#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=python-prediction

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag python-prediction adelee2/$dockerpath

# Log into the Dockerhub from your local terminal
docker login
# Step 3:
# Push image to a docker repository
docker push adelee2/$dockerpath