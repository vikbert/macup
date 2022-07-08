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

##############################################
## System Utilities
##############################################
echo
echo "Installing system Utilities"
brew install --cask iterm2
brew install git
brew install --cask gitup
brew install --cask github
brew install --cask kaleidoscope
brew install spectra
brew install wget
brew install --cask keepassxc
brew install --cask bitwarden
brew install --cask the-unarchiver
brew install --cask calibre
brew install --cask lunar
brew install --cask cheatsheet
brew install --cask alfred
brew install --cask proxifier
brew install --cask spectacle

##############################################
## Multi Media
##############################################
brew install youtube-dl
brew install --cask vlc
brew install --cask kap

##############################################
## Browser
##############################################
brew install --cask google-chrome
brew install --cask firefox
brew install --cask brave-browser

##############################################
## Communication
##############################################
brew install --cask slack
brew install --cask zoom
brew install --cask skype


##############################################
## Editor & client
##############################################
echo
echo "Installing office editors"
brew install --cask xmind
brew install --cask notion
brew install --cask obsidian
brew install --cask postman
brew install --cask stoplight-studio
brew install --cask pdfelement

##############################################
## Database tools
##############################################
echo
echo "Installing database tools"
brew install --cask sequel-pro
brew install --cask tableplus
brew install --cask robo-3t ## mongodb client

##############################################
## IDE
##############################################
echo
echo "Installing IDE"
brew install --cask phpstorm
brew install --cask visual-studio-code

##############################################
## java
##############################################
echo
echo "Installing Java SDK"
brew tap AdoptOpenJDK/openjdk
brew install --cask adoptopenjdk11
brew install --cask jetbrains-toolbox

##############################################
## CLI SDK
##############################################
echo
echo "Installing CLI SDK"
brew install --cask google-cloud-sdk
brew install heroku
brew install cloudfoundry/tap/cf-cli@8
brew install symfony-cli/tap/symfony-cli

##############################################
## Fonts
##############################################
echo
echo "Installing fonts"
brew tap homebrew/cask-fonts
brew install font-inconsolata
brew install font-roboto
brew install font-roboto-mono
brew install font-roboto-slab
brew install font-source-code-pro
brew install font-overpass
brew install font-montserrat
brew install font-londrina-outline
brew install font-londrina-shadow
brew install font-londrina-sketch
brew install font-londrina-solid
brew install font-lobster-two
brew install font-source-sans-pro
brew install font-jetbrains-mono
brew install font-fira-code
brew install font-hasklig
brew install font-monoid

##############################################
## Docker & Kubernetes tools
##############################################
echo
echo "Installing docker & Kubernetes related"
brew install --cask docker
brew install helm
brew install minikube
brew install octant
brew install k9s
brew install --cask lens

##############################################
## xcode
##############################################
echo
echo "Accepting the XCode Software License Agreement"
echo
sudo xcodebuild -license accept
