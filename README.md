# Ubuntu Setup Automation

Omar Salih - Final project for FA'23 Extraordinary Tools for Computing.

This project automates the setup and configuration of Ubuntu environments using Ansible within Docker containers. It streamlines software installations, updates, and system configurations, ensuring a consistent and secure development environment.

## Requirements
- Docker
- Ansible
- [Optional] Git (for cloning the repository)

## Installation
1. Install Docker: [Docker Installation Guide](https://docs.docker.com/get-docker/)
2. Install Ansible: [Ansible Installation Guide](https://docs.ansible.com/ansible/latest/installation_guide/index.html)
3. Clone the repository: `git clone [repository URL]`

## Usage
To test the playbook within a Docker container, run the bash script using the following command:
- `./run_controled_test.bash`

To use the playbook to setup your own Ubuntu installation, use the following instructions:
1. Be sure that ansible is properly installed using the [Ansible Installation Guide](https://docs.ansible.com/ansible/latest/installation_guide/index.html). 
2. Clone the repository: `git clone [repository URL]`
3. Change directory into the repository using `cd ubuntu-setup-automation`
4. Run the notebook using `ansible-notebook ubuntu_setup.yml` 

## Features
- **Setting Timezone:** Configures the system to the specified timezone, ensuring consistency in time-related operations.
Updating and Upgrading Packages: Keeps the system up-to-date with the latest packages and security patches, enhancing reliability and security.
- **Installing Specific Packages:** Automates the installation of essential tools and applications like Git, Vim, and others, tailored to your development needs.
- **Installing your favorite apps:** Spotify, VS Code, Flameshot, Steam, and GParted.
- **Testing the notebook in a controlled environment:** No need to worry about your current setup being affected thanks to Docker.


## License
This project is licensed under the [MIT License](LICENSE).
