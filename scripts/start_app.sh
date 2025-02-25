#!/bin/bash
set -e

APP_NAME="python-final"
IMAGE_NAME="python-final-image"
CONTAINER_NAME="python-final-container"

echo "Stopping any existing container..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

echo "Navigating to app directory..."
cd /home/ec2-user/python-final

echo "Building Docker image..."
docker build -t $IMAGE_NAME .

echo "Running new container..."
docker run -d -p 5000:5000 --name $CONTAINER_NAME -v /home/ec2-user/python-final/data:/app/data $IMAGE_NAME
