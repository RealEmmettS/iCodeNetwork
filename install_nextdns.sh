#!/bin/bash

echo "Starting the installation of NextDNS..."

# Install NextDNS
brew install nextdns/tap/nextdns

# Check if installation was successful
if command -v nextdns >/dev/null 2>&1; then
    echo "NextDNS installed successfully."

    # Configure NextDNS for a workstation
    echo "Configuring NextDNS..."
    sudo nextdns install \
      -config a55db9 \ # Replace with your actual config ID
      -report-client-info \
      -auto-activate

    echo "NextDNS configuration complete."

    # Check NextDNS status
    echo "Checking NextDNS status..."
    sudo nextdns status

else
    echo "Error: NextDNS installation failed."
fi
echo "Installation complete."