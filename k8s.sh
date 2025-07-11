#!/bin/bash

# Update packages
sudo yum update -y

# Install specific versions of Kubernetes components
sudo yum install -y kubelet-1.21.2
sudo yum install -y kubectl-1.21.2
sudo yum install -y kubeadm-1.21.2

# Reload systemd and restart kubelet
sudo systemctl daemon-reload
sudo systemctl restart kubelet

# Check kubelet status
sudo systemctl status kubelet

# Enable kubelet on boot
sudo systemctl enable kubelet

echo "✅ Kubernetes components installed and kubelet configured."


# Install Git
sudo yum install -y git

# Verify Git installation
git --version

