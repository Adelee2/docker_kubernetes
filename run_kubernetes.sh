#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=python-prediction

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy pythonprediction --image=adelee2/$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/pythonprediction-679b444c56-gb9cw --address 0.0.0.0 80:80
