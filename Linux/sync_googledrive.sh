#!/bin/bash

systemctl --user enable grive-timer@$(systemd-escape GoogleDrive).timer
systemctl --user start grive-timer@$(systemd-escape GoogleDrive).timer
systemctl --user enable grive-changes@$(systemd-escape GoogleDrive).service
systemctl --user start grive-changes@$(systemd-escape GoogleDrive).service
