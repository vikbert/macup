# Function to install a Homebrew package or cask if it's not already installed
# Arguments:
#   $1: package_name (string) - The name of the package or cask to install.
#   $2: cask_install (boolean, optional) - Set to 'true' to install as a cask. Defaults to 'false'.
install_brew_package() {
  local package_name="$1"
  local cask_install="${2:-false}" # Default to false if no second argument is provided

  local install_command="brew install"
  local list_command="brew list --formula"
  local type_description="package"

  if [[ "${cask_install}" == "--cask" ]]; then
    install_command="brew install --cask"
    list_command="brew list --cask" # Use brew list --cask for checking installed casks
    type_description="cask"
  fi

  # Check if the package/cask is already installed
  if ${list_command} | grep -q "^${package_name}$"; then
    echo " ✅ ${package_name} is installed"
  else
    echo "${package_name} is not installed via Homebrew. Installing now..."
    ${install_command} "${package_name}"
    brew cleanup "${package_name}"
  fi
}

install_brew_package "zsh"
#chsh -s /bin/zsh

# echo "Installing Oh-My-Zsh"
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# ZSH Plugs
install_brew_package "zsh-autosuggestions"
install_brew_package "zsh-syntax-highlighting"

## --cask packages
install_brew_package "bitwarden" "--cask" 
install_brew_package "brave-browser" "--cask"
install_brew_package "bruno" "--cask"
install_brew_package "calibre" "--cask"
install_brew_package "docker" "--cask"
install_brew_package "easydict" "--cask"
install_brew_package "font-fira-code" "--cask"
install_brew_package "font-hack-nerd-font" "--cask"
install_brew_package "font-hasklig" "--cask"
install_brew_package "font-inconsolata" "--cask"
install_brew_package "font-jetbrains-mono" "--cask"
install_brew_package "font-londrina-outline" "--cask"
install_brew_package "font-londrina-shadow" "--cask"
install_brew_package "font-londrina-sketch" "--cask"
install_brew_package "font-maple-mono" "--cask"
install_brew_package "font-maple-mono-nf" "--cask"
install_brew_package "font-monoid" "--cask"
install_brew_package "font-overpass" "--cask"
install_brew_package "font-roboto-slab" "--cask"
install_brew_package "google-cloud-sdk" "--cask"
install_brew_package "iterm2" "--cask"
install_brew_package "kap" "--cask"
install_brew_package "lens" "--cask"
install_brew_package "macdown" "--cask"
install_brew_package "master-pdf-editor" "--cask"
install_brew_package "notion" "--cask"
install_brew_package "obsidian" "--cask"
install_brew_package "pdfelement" "--cask"
install_brew_package "phpstorm" "--cask"
install_brew_package "postman" "--cask"
install_brew_package "qlmarkdown" "--cask"
install_brew_package "qspace-pro" "--cask"
install_brew_package "raycast" "--cask"
install_brew_package "stoplight-studio" "--cask"
install_brew_package "tableplus" "--cask"
install_brew_package "the-unarchiver" "--cask"
install_brew_package "vlc" "--cask"
install_brew_package "xmind" "--cask"
install_brew_package "youtube-to-mp3" "--cask"
install_brew_package "zed" "--cask"

