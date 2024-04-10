#!/bin/bash

# Route config file
CONFIG_ROUTE="/usr/local/sbin/3656/configured/config.conf"

# If Config file does not exists
if [ ! -f "$CONFIG_ROUTE" ]; then
    echo "[#] Config file does not exist"
    # Call program to repair file
    bash repair_config_file
fi

# Leer el archivo línea por línea
while IFS= read -r linea; do
    # Verificar si la línea contiene "input=yes"
    if [[ $linea == *"input=yes"* ]]; then
        # Acción si input=yes
        echo "La acción para input=yes aquí"
    fi
    
    # Verificar si la línea contiene "input=no"
    if [[ $linea == *"input=no"* ]]; then
        # Acción si input=no
        echo "La acción para input=no aquí"
    fi
done < "$ruta_del_archivo"