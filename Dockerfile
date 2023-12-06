# Use the latest Ubuntu image as base
FROM ubuntu:latest

# Avoiding user interaction with tzdata
ENV DEBIAN_FRONTEND=noninteractive

# Update and Install Python, SSH, and tzdata
RUN apt-get update && apt-get install -y python3 python3-pip ssh tzdata

# Install Ansible
RUN pip3 install ansible

# Create a directory for your Ansible playbook
RUN mkdir /ansible-playbook

# Copy your playbook into the Docker image
COPY ./ubuntu_setup.yml /ansible-playbook/ubuntu_setup.yml

# Set working directory
WORKDIR /ansible-playbook

# By default, run Ansible playbook when the container starts
CMD ["ansible-playbook", "ubuntu_setup.yml"]
