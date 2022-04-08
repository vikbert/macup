function installMacAppStoreApps {
  echo
  echo "Installing through the App Store"
  # mas-cli = command line interface for the Mac App Store
  brew install mas
  # apps are installed with their Mac App Store product identifier
  # 'Pixelmator', id: 407963104
  mas install 407963104
  # 'Spark', id: 1176895641
  mas install 1176895641
  # 'Amphetamine - Powerful keep-awake utility', id: 937984704
  mas install 937984704
  # 'WireGuard VPN client', id: 1451685025
  mas install 1451685025
  # 'Pixelmator Pro', id: 1289583905
  mas install 1289583905
  # 'Byword - Markdown editor', id: 420212497
  mas install 420212497
}


read -p "Do you want to install Mac App Store only applications (y/n)? " answer
case ${answer:0:1} in
    y|Y|yes )
        installMacAppStoreApps
    ;;
    * )
        echo "Skipping appstore.sh script"
    ;;
esac
