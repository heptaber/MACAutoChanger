# MAC Auto Changer for MacOS
Auto-changing MAC address on reboot to a random one.</br>

*List of files:*
- `setup.sh` - script for automating the process</br>
- `macchanger.sh` - changing MAC address script</br>
- `local.macchanger.plist` - XML configuration for launchd</br>

*What is **launchd**?* - a unified, open-source service management framework for starting, stopping and managing daemons, applications, processes, and scripts. More info on [launchd.info](https://www.launchd.info/)

## How to use ?
```sh
chmod +x setup.sh
sudo ./setup.sh
```

### How to revert changes == remove everything made by the script
```sh
sudo rm /usr/local/bin/macchanger.sh
sudo rm /Library/LaunchDaemons/local.macchanger.plist
```

</br>
</br>
</br>

*Open mind, open heart, open source.*
