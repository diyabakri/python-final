#!/bin/bash
set -e

CONTAINER_NAME="python-final-container"

echo "Stopping and removing container..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true
