#!/bin/bash

# Step 1: Upgrade system (optional but recommended)
sudo dnf upgrade --releasever=2023.8.20250707 -y

# Step 2: Install Docker using dnf
sudo dnf install docker -y

# Step 3: Start and enable Docker service
sudo systemctl enable --now docker

# Step 4: Add user to Docker group
sudo groupadd docker      # Only needed if group doesn't exist
sudo usermod -aG docker ec2-user

# Step 5: Log out and back in or restart session
# Step 6: Verify Docker is working
docker info > ~/docker_details.txt

