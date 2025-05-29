#!/bin/bash

# Define a constant for the user's home directory
readonly USER_HOME="/Users/zhoux"

echo

if hash brew 2>/dev/null; then
  echo "Homebrew is already installed!"
else
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo >> "${USER_HOME}/.zprofile"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "${USER_HOME}/.zprofile"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

echo
echo "Ensuring you have the latest Homebrew..."
brew update

echo
echo "Ensuring you have a healthy Homebrew environment..."
brew doctor

echo
echo "Upgrading existing brews..."
brew upgrade

echo "Cleaning up your Homebrew installation..."
brew cleanup