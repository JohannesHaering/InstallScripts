#!/bin/bash

echo Updating complete System
pacman -Syu

echo Save package list to installs/current_pacman_packages
pacman -Qqe > installs/current_pacman_packages.txt
