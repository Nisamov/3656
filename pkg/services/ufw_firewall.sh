#!/bin/bash

# Instalacion UFW
sudo apt install ufw
# Habilitar UFW
ufw enable
# Deniega conexiones entrantes que no coincidan con ninguna regla. | Comentada
#ufw default deny incoming