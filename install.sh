#!/bin/bash

# Software de completa instalacion para equipos ubuntu moldeado a gustos de Andrés Ruslan Abadías Otal
# Su uso es libre, no me hago responsable de lo que pueda ocurrir a sus equipos por llevar a cabo pruebas con las configuraciones

# Instalacion: ufw_firewall, git, autonetplan, shellcheck...

# Actualizacion de sistema
sudo apt update
sudo apt upgrade

# Comenzar instalacion de servicios

# UFW Firewall
sudo bash "/pkg/services/ufw_firewall.sh"

# GIT
sudo bash "/pkg/services/git.sh"

# AutoNetplan
read -p "Install autonetplan [y/n]: " installautonetplan
if [[ installautonetplan == "y" && installautonetplan == "s" ]]; then
    sudo bash "/pkg/resources/autonetplan.sh"
fi

read -p "Install Secure Service Protocol [y/n]: " installssp
if [[ installssp == "y" && installssp == "s" ]]; then
    sudo bash "/pkg/resources/ssp.sh"
fi

# Shellcheck
sudo bash "/pkg/services/shellcheck.sh"

#GO
sudo bash "/pkg/services/go.sh"

# Sustitucion de .bashrc
sudo rm -f "/home/$USER/.bashrc" # Eliminacion de bashrc original
sudo cp "/pkg/config/.bashrc" "/home/$USER/" # Posicionamiento en /home/usuario/
source .bashrc # Recarga de bashrc