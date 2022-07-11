#!/usr/bin/env bash

# Fail immediately if any errors occur
set -e

echo "Caching password..."
sudo -K
sudo true;

MY_DIR="$(dirname "$0")"

# Note: Homebrew needs to be set up first
# source ${MY_DIR}/homebrew.sh
# source ${MY_DIR}/applications.sh
# source ${MY_DIR}/vscode.sh
source ${MY_DIR}/webdev.sh
