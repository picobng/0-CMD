# https://www.idownloadblog.com/2022/11/16/how-to-jailbreak-ios-15-palera1n/

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install libimobiledevice libirecovery

sudo apt install pip -y

mkdir iphone && cd iphone
git clone --recursive https://github.com/palera1n/palera1n && cd palera1n

sudo bash ./palera1n.sh --tweaks 15.7 --semi-tethered
