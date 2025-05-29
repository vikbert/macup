##############################################
## PHP
##############################################
echo
echo "Installing PHP "
brew tap shivammathur/php
brew install shivammathur/php/php@8.3
echo 'export PATH="/opt/homebrew/opt/php@8.3/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/opt/homebrew/opt/php@8.3/sbin:$PATH"' >> ~/.zshrc
##############################################
## composer
##############################################
echo
echo "Installing composer "
curl -sS https://getcomposer.org/installer | php
mkdir -p ~/bin
mv composer.phar ~/bin/composer
chmod +x ~/bin/composer
composer self-update
composer -V

##############################################
## NPM Yarn
##############################################
echo
echo "Installing node, npm, yarn "
brew install npm yarn
sudo npm install --location=global n 2>/dev/null
sudo n lts # currently latest LTS
npm install -g pnpm
npm fund
