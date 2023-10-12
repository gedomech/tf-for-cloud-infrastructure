#!/bin/bash

# Update package repositories and install required packages
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

# Download HashiCorp GPG key and add it to the keyring
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

# Display the GPG key fingerprint
gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint

# Add HashiCorp repository to the sources list
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

# Update package repositories with the new HashiCorp repository
sudo apt update

# Install Terraform
sudo apt-get install terraform

# Test the installation by checking Terraform version
terraform --version
