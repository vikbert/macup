echo
echo "Installing applications"

####### Utilities

####### Clipboard manager

brew install spectra ####### Move and resize windows on macOS with keyboard shortcuts and snap areas
#brew install --cask google-backup-and-sync
#brew install --cask dropbox
#brew install --cask macpass
brew install --cask keepassxc
#brew install --cask keeweb
#brew install --cask enpass
brew install --cask bitwarden
brew install bitwarden-cli
brew install --cask vlc ####### standard media player
brew install --cask iina ####### another modern media player
brew install --cask the-unarchiver
brew install --cask cyberduck ####### cloud storage browser
#brew install --cask balenaetcher ####### flash OS images to USB
brew install wget
#brew install --cask disk-inventory-x ####### stock control
#brew install --cask grandperspective ####### disk file analyse
brew install --cask omnidisksweeper ####### find large unwanted files and sweep them into the trash
#brew install --cask arq ####### cloud backup
#brew install --cask keybase
#brew install --cask vnc-viewer
brew install --cask calibre
brew install --cask anki ####### flash card for learning
#brew install --cask libreoffice
#brew install --cask aerial ####### free screen saver

####### Terminals
brew install --cask iterm2

####### Browsers
brew install --cask google-chrome
brew install --cask firefox
brew install --cask brave-browser

####### Communication
brew install --cask slack
brew install --cask microsoft-teams

####### (Text) Editors
#brew install --cask sublime-text
#brew install --cask atom
brew install macvim
brew install --cask xmind
brew install --cask vscodium ####### free vs-code editor with MIT licence, without tracking by Microsoft
#brew install --cask brackets

####### Markdown
#brew install --cask macdown

####### Graphics tools
#brew install --cask inkscape
#brew install --cask exifcleaner

####### convert and edit videos
#brew install --cask handbrake

####### Screen recorder
brew install --cask kap

####### note
#brew install --cask evernote
#brew install --cask notion

####### Sync brightness (based on build-in Macbook light sensor) to external monitors
brew install --cask lunar

####### Security
brew install --cask knockknock
brew install --cask blockblock
brew install --cask taskexplorer
brew install --cask netiquette
brew install --cask little-snitch

####### Useful scripts
brew install youtube-dl
####### https://github.com/lapfelix/BluetoothConnector/ : connect/disconnect Bluetooth devices
brew install bluetoothconnector

brew install --cask veracrypt
####### VeraCrypt config: by default VeraCrypt will not alter the timestamp of the volume after it has been created
####### This will prevent Cloud syncing from recognizing changes to the volume, and prevent synchronization
####### So: 'uncheck' "Preserve modification timestamp of file containers"
####### ######### cp files/veracrypt-configuration.xml ~/"Library/Application Support/VeraCrypt/Configuration.xml"
####### ditto (OSX-specific app) will create the directory structure that is missing in the destination
ditto files/veracrypt-configuration.xml ~/"Library/Application Support/VeraCrypt/Configuration.xml"


####### Add the brew-cask-upgrade tool: allows to upgrade applications installed with homebrew cask
####### homebrew only has support for 'brew cask outdated', not yet 'brew cask upgrade'
####### See: https://github.com/buo/homebrew-cask-upgrade
####### apps can be updated with 'brew cu app'
brew tap buo/cask-upgrade

#brew cask install hiddenbar
#brew install --cask mirrordisplays
#brew cask install tunnelblick
#brew cask install cheatsheet
####### control Mac Media Keys
#brew install --cask beardedspice
#brew install --cask marshallofsound-google-play-music-player
#brew install --cask ytmdesktop-youtube-music
