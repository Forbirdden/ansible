#!/bin/bash
dnf upgrade -y
flatpak update -y
sudo -u emil /usr/bin/pipx upgrade-all
