#!/bin/sh
# shell 本shell适用于ubuntu 的开发环境搭建

# init
rootPasswd=yhaaa
# switch to root user
user=`whoami`
if [ "$user" != "root" ]; then
    echo "switch to root user."
    # sudo -u root
fi

sudo apt-get install expect &&
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update

# 安装nginx,MySQL,PHP,phpmyadmin
sudo apt-get install mysql-server mysql-client mysql&&
sudo apt-get remove apache2 &&
sudo apt-get install nginx &&
sudo apt-get install php5 php5-json php5-fpm php5-mysql php5-curl php5-gd php5-cli php5-common &&
sudo mkdir /var/www &&
sudo apt-get install phpmyadmin
sudo ln -s /usr/share/phpmyadmin/ /var/www/phpmyadmin &&
sudo mkdir /var/www &&

# 
sudo install -f fcitx &&
sudo install -f fonts-wqy-microhei &&
# sublime-text-3 setting preferences:
# "font_face": "WenQuanYi Micro Hei Mono","font_size": 11

# install browser
sudo install chromium-browser firefox &&

# install node
sudo apt-get install nodejs npm &&

# git 
sudo apt-get install -f git &&

# other
sudo apt-get install -f synaptic mysql-workbench wireshark virtualbox &&

echo "done"