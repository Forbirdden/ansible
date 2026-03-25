#!/bin/bash

sudo dnf config-manager setopt fedora-cisco-openh264.enabled=0
sudo dnf clean all
sudo dnf install -y ansible-core
ansible-galaxy collection install community.general

echo "Select playbook"
options=("Workstation" "Survivor Laptop" "Veteran PC" "Exit")

select opt in "${options[@]}"
do
    case $opt in
        "Workstation")
            PLAYBOOK="workstation.yml"
            break
            ;;
        "Survivor Laptop")
            PLAYBOOK="laptop.yml"
            break
            ;;
        "Veteran PC")
            PLAYBOOK="oldpc.yml"
            break
            ;;
        "Exit")
            exit 0
            ;;
        *) echo "WHOA wHat are YOU doinG?";;
    esac
done

ansible-playbook "$PLAYBOOK" --ask-become-pass -i "localhost," -c local
