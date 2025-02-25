#!/bin/bash
set -e

echo "Updating system and installing dependencies..."
apt update -y
apt install -y docker.io unzip awscli

echo "Starting Docker..."
systemctl start docker
systemctl enable docker

echo "Ensuring Docker service runs without sudo..."
usermod -aG docker root
