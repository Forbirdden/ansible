#!/bin/bash

sudo dnf config-manager setopt fedora-cisco-openh264.enabled=0

sudo dnf clean all

sudo dnf install -y ansible-core

ansible-galaxy collection install community.general

ansible-playbook playbook.yml --ask-become-pass -i "localhost," -c local