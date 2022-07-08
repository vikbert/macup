
echo "Installing Zsh"
brew install zsh
brew cleanup zsh

### switch default shell to zsh
#chsh -s /bin/zsh

echo "Installing Oh-My-Zsh"
# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# ZSH Autosuggestions
brew install zsh-autosuggestions
brew cleanup zsh-autosuggestions