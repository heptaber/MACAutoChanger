# MAC Auto Changer for MacOS

Auto-changing MAC address on reboot to a random one.</br>

_List of files:_

- `setup.sh` - script for automating the process</br>
- `macchanger.sh` - changing MAC address script</br>
- `local.macchanger.plist` - XML configuration for launchd</br>

_What is **launchd**?_ - a unified, open-source service management framework for starting, stopping and managing daemons, applications, processes, and scripts. More info on [launchd.info](https://www.launchd.info/)

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

### How to use the script manually

The easiest way to change your mac after installing the script in a manual way is creating alias, so:

```sh
echo "alias changemac='sudo /usr/local/bin/macchanger.sh'" >> ~/.zshrc
source ~/.zshrc
```

**Change** `~/.zshrc` to `~/.bashrc` if you use bash. <br />
Thus you can you `changemac` command to run the script.

#### Alias to show mac

```sh
echo "alias showmac='ifconfig en0 | awk '/ether/{print $2}' | xargs'" >> ~/.zshrc
source ~/.zshrc
```

**Change** `~/.zshrc` to `~/.bashrc` if you use bash. <br />
`showmac` command shows current MAC address.

</br>
</br>
</br>

_Open mind, open heart, open source._
