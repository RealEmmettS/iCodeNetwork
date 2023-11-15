#!/bin/bash

# Script to install and configure NextDNS for iCode

# Install NextDNS
echo "Installing NextDNS..."
brew install nextdns

# Check if installation was successful
if ! command -v nextdns >/dev/null 2>&1; then
    echo "NextDNS installation failed."
    exit 1
fi

echo "NextDNS installed successfully."

# Configure NextDNS with iCode profile
echo "Configuring NextDNS with iCode profile..."
nextdns install -config a55db9

# Validate configuration
echo "NextDNS configuration complete."

# Optional: Add additional configuration or checks as needed
