#!/bin/bash

# Route config file
CONFIG_ROUTE="/usr/local/sbin/3656/configured/config.conf"

# Check for file to exist
if [ ! -f "$CONFIG_ROUTE" ]; then
    echo "[#] Config file does not exist"
    # Call program to repair file
    bash repair_config_file
fi

# Leer el archivo línea por línea
while IFS= read -r linea; do
    # Verificar si la línea contiene "input=yes"
    if [[ $linea == *"config_enabled=true"* ]]; then
        # If file config is enabled
        echo "File is ready to read"
    fi
    
    # Verificar si la línea contiene "input=no"
    if [[ $linea == *"config_enabled=false"* ]]; then
        # File is not enabled
        echo "File is not ready to read"
    fi
done < "$ruta_del_archivo"