#!/bin/bash

echo Updating complete System
pacman -Syu

echo Install and Update all packages from installs/pacman_packages.txt
pacman -S --noconfirm --needed - < installs/pacman_packages.txt
