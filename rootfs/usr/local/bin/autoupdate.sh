#!/bin/bash
dnf upgrade -y
flatpak update -y
sudo -u emil /home/emil/.local/bin/pipx upgrade-all
