#!/bin/bash
set -e

echo "Updating system and installing dependencies..."
sudo yum update -y
sudo yum install -y docker

echo "Starting Docker..."
sudo systemctl start docker
sudo systemctl enable docker

echo "Adding ec2-user to the docker group..."
sudo usermod -aG docker ec2-user
