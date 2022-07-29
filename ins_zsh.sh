#! /bin/sh

sudo apt install zsh -y

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

wget https://raw.githubusercontent.com/N0n3-git/lnx/main/zshrc.sh?token=GHSAT0AAAAAABWK4VPVGNK2RVZHIBJKZ54EYXDIPOA

cat zshrc.sh?token=GHSAT0AAAAAABWK4VPVGNK2RVZHIBJKZ54EYXDIPOA >> ~/.zshrc

rm zshrc.sh?token=GHSAT0AAAAAABWK4VPVGNK2RVZHIBJKZ54EYXDIPOA

sed -i 's/robbyrussell/xiong-chiamiov-plus/g' .zshrc && zsh
