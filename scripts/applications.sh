##############################################
## zsh
##############################################
echo
echo "Installing Zsh"
brew install zsh
brew cleanup zsh
chsh -s /bin/zsh

echo "Installing Oh-My-Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# ZSH Plugs
brew install zsh-autosuggestions
brew cleanup zsh-autosuggestions
brew install zsh-syntax-highlighting
brew cleanup zsh-syntax-highlighting

brew install --cask bitwarden
brew install --cask brave-browser
brew install --cask bruno
brew install --cask calibre
brew install --cask docker
brew install --cask easydict
brew install --cask firefox
brew install --cask font-fira-code
brew install --cask font-hack-nerd-font
brew install --cask font-hasklig
brew install --cask font-inconsolata
brew install --cask font-jetbrains-mono
brew install --cask font-londrina-outline
brew install --cask font-londrina-shadow
brew install --cask font-londrina-sketch
brew install --cask font-maple-mono
brew install --cask font-maple-mono-nf
brew install --cask font-monoid
brew install --cask font-overpass
brew install --cask font-roboto-slab
brew install --cask google-chrome
brew install --cask google-cloud-sdk
brew install --cask iterm2
brew install --cask kap
brew install --cask keepassxc
brew install --cask lens
brew install --cask macdown
brew install --cask master-pdf-editor
brew install --cask notion
brew install --cask obsidian
brew install --cask pdfelement
brew install --cask phpstorm
brew install --cask postman
brew install --cask qlmarkdown
brew install --cask qspace-pro
brew install --cask raycast
brew install --cask stoplight-studio
brew install --cask tableplus
brew install --cask the-unarchiver
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask xmind
brew install --cask youtube-music
brew install --cask zed

