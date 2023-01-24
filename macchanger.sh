sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport en0 -z
openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//' | xargs sudo ifconfig en0 ether
sudo ifconfig en0 up
