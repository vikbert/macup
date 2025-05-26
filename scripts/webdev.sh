##############################################
## PHP
##############################################
echo
echo "Installing PHP "
brew tap shivammathur/php
brew install shivammathur/php/php@8.1
brew install shivammathur/php/php@8.0
brew install shivammathur/php/php@7.4

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
sudo n lts # currently latest LTS: v16.16.0
sudo n 14 # currently most used release: v14.20.0
npm install -g pnpm
