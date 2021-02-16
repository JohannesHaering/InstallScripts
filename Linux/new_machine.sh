#!/bin/bash

echo Install all packages
sh ./install_all_packages.sh

echo Install all external packages from source code

echo Add symlinks for dot files
sh ./update_dot_files.sh
