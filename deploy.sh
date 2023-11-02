#!/bin/bash

# Go to the directory of your React application
cd /home/ubuntu/reaactapp

# Install project dependencies
npm install

# Build the React application for production
npm run build

# Check if the build was successful
if [ $? -eq 0 ]; then
  echo "React application has been built successfully."
else
  echo "Error: React application build failed."
  exit 1
fi

# Continue with the Docker image build
docker build -t project:latest .

# Check if the Docker image build was successful
if [ $? -eq 0 ]; then
  echo "Docker image reactis-demo:latest has been built successfully."
else
  echo "Error: Docker image build failed."
  exit 1
fi

