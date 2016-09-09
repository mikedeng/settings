
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y vim
sudo apt-get install -y zsh
sudo apt-get install -y curl
sudo apt-get install -y aria2
sudo apt-get install -y git
sudo apt-get install -y gitg
sudo apt-get install -y tig
sudo apt-get install -y nautilus-open-terminal
sudo apt-get install -y screen
sudo apt-get install -y exuberant-ctags
sudo apt-get install -y htop
sudo apt-get install -y memcached
sudo apt-get install -y openssh-server
sudo apt-get install -y openjdk-7-jre
sudo apt-get install -y xclip

#local packs
sudo dpkg -iy packs/sogoupinyin_2.0.0.0078_amd64.deb

# gnome
sudo apt-get install gnome-shell
sudo apt-get install gnome-tweak-tool
sudo /usr/lib/lightdm/lightdm-set-defaults -s gnome-shell

# mysql
sudo apt-get install -y mysql-client-5.5
sudo apt-get install -y mysql-client-core-5.5
sudo apt-get install -y mysql-server
sudo apt-get install -y libmysqlclient-dev

# sublime
# http://www.webupd8.org/2011/03/sublime-text-2-ubuntu-ppa.html
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update
sudo apt-get install sublime-text