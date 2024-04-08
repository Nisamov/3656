#!/bin/bash
# Installation Program 3656

# Variable declaration
# Absolute route
INSTALL_DIR="/usr/local/sbin/3656"
CONFIG_ROUTE="/usr/local/sbin/3656/configured"
CONFIG_FILE="config.conf"

# Messages
CREATED="is already created."
NOT_CREATED="is not created."
CREATING="creating..."

# Ask if wanted to install
read -p "Do you want to install 3656 program? (y/n): " response
if [[ $response != "y" ]]; then
    # Stop program
    echo "Installation aborted."
    exit 0
fi

# Check if INSTALL_DIR exists
if [[ ! -d "$INSTALL_DIR" ]]; then
    echo "Installation directory $INSTALL_DIR $NOT_CREATED, $CREATING"
    sudo mkdir -p "$INSTALL_DIR" || { echo "Failed to create installation directory"; exit 1; }
else
    echo "Installation directory $INSTALL_DIR $CREATED"
fi

# Check if CONFIG_ROUTE exists
if [[ ! -d "$CONFIG_ROUTE" ]]; then
    echo "Configuration directory $CONFIG_ROUTE $NOT_CREATED, $CREATING"
    sudo mkdir -p "$CONFIG_ROUTE" || { echo "Failed to create configuration directory"; exit 1; }
else
    echo "Configuration directory $CONFIG_ROUTE $CREATED"
fi

# Check if config file exists
if [[ ! -f "$CONFIG_ROUTE/$CONFIG_FILE" ]]; then
    echo "Configuration file $CONFIG_ROUTE/$CONFIG_FILE $NOT_CREATED, $CREATING"
    sudo cp config.conf "$CONFIG_ROUTE" || { echo "Failed to copy configuration file"; exit 1; }
else
    echo "Configuration file $CONFIG_ROUTE/$CONFIG_FILE $CREATED"
fi

echo "Installation completed successfully."
