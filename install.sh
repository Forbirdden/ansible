#!/bin/bash

sudo dnf install -y ansible-core

ansible-galaxy collection install community.general

ansible-playbook playbook.yml --ask-become-pass