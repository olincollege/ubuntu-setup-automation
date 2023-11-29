#!/bin/bash

# Variables
DOCKER_IMAGE_NAME="ansible-test-env"
DOCKER_CONTAINER_NAME="ansible-container"
PLAYBOOK_PATH="./ubuntu_setup.yml"

# Build Docker Image
echo "Building Docker image..."
docker build -t $DOCKER_IMAGE_NAME .

# Run Docker Container
echo "Running Docker container..."
docker run -dit --name $DOCKER_CONTAINER_NAME $DOCKER_IMAGE_NAME

# Copy Ansible Playbook to Container
echo "Copying playbook to Docker container..."
docker cp $PLAYBOOK_PATH $DOCKER_CONTAINER_NAME:/ansible-playbook/playbook.yml

# Execute Ansible Playbook Inside Container
echo "Executing Ansible playbook inside the Docker container..."
docker exec -it $DOCKER_CONTAINER_NAME ansible-playbook /ansible-playbook/playbook.yml

echo "Ansible playbook execution completed."
