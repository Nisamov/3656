#!/bin/bash

# Software de completa instalacion para equipos ubuntu moldeado a gustos de Andrés Ruslan Abadías Otal
# Su uso es libre, no me hago responsable de lo que pueda ocurrir a sus equipos por llevar a cabo pruebas con las configuraciones

# Instalacion: ufw_firewall, git, autonetplan, shellcheck...

# Actualizacion de sistema
sudo apt update
sudo apt upgrade

# Comenzar instalacion de servicios

# UFW Firewall
if [[ -f "./pkg/services/ufw_firewall.sh" ]]; then
    sudo bash "/pkg/services/ufw_firewall.sh"
fi

# GIT
if [[ -f "./pkg/services/git.sh" ]]; then
    sudo bash "/pkg/services/git.sh"
fi

# AutoNetplan
if [[ -f "./pkg/resources/autonetplan.sh" ]]; then
    sudo bash "/pkg/resources/autonetplan.sh"
fi

# Shellcheck
if [[ -f "./pkg/services/shellcheck" ]]; then
    sudo bash "/pkg/services/shellcheck"
fi