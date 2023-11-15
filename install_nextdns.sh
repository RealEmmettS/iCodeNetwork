#!/bin/bash

echo "Installing NextDNS..."

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

    echo "NextDNS configured successfully."
else
    echo "Error: NextDNS installation failed."
fi
