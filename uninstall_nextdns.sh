#!/bin/bash

# Script to uninstall NextDNS and remove its configuration

echo "Uninstalling NextDNS..."

# Stop NextDNS service
if command -v nextdns >/dev/null 2>&1; then
		echo "Stopping NextDNS service..."
		nextdns stop
fi

# Uninstall NextDNS
brew uninstall nextdns

# Removing NextDNS configuration files
# Note: Adjust or add paths as needed based on where NextDNS stores its configuration files
echo "Removing NextDNS configuration files..."
rm -f /etc/nextdns.conf

echo "NextDNS has been successfully uninstalled."

# Optional: Add any additional cleanup steps if required
