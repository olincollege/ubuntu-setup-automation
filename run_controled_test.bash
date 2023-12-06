#!/bin/bash

# Variables
DOCKER_IMAGE_NAME="ansible-test-env"
DOCKER_CONTAINER_NAME="ansible-container"

# Build Docker Image
echo "Building Docker image..."
docker build -t $DOCKER_IMAGE_NAME .

# Run Docker Container
echo "Running Docker container..."
docker run -dit --name $DOCKER_CONTAINER_NAME $DOCKER_IMAGE_NAME

# Uncomment the following lines if you need to manually execute the playbook
#echo "Executing Ansible playbook inside the Docker container..."
#docker exec -it $DOCKER_CONTAINER_NAME ansible-playbook /ansible-playbook/playbook.yml

# Execute Ansible Playbook Inside Container
echo "Executing Ansible playbook inside the Docker container..."
docker exec -it $DOCKER_CONTAINER_NAME ansible-playbook /ansible-playbook/ubuntu_setup.yml

# Attach to Container to View Output
echo "Attaching to container..."
docker attach $DOCKER_CONTAINER_NAME

docker stop ansible-container

docker rm ansible-container

echo "Container setup completed."
