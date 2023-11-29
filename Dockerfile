# Dockerfile
FROM ubuntu:latest

# Avoiding user interaction with tzdata
ENV DEBIAN_FRONTEND=noninteractive

# Update and Install Python, SSH, and tzdata
RUN apt-get update && apt-get install -y python3 python3-pip ssh tzdata

# Reconfigure tzdata (optional, try if tzdata is not working properly)
RUN dpkg-reconfigure -f noninteractive tzdata

# Install Ansible
RUN pip3 install ansible

# Create a directory for your Ansible project
RUN mkdir /ansible-playbook

# Set working directory
WORKDIR /ansible-playbook

# By default, run bash when the container starts
CMD ["/bin/bash"]
