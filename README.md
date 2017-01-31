# dev_box
Ansible Playbook for setting up a dev box on xubuntu 16.04

## Manual TODO before running
``` bash
sudo apt-get install python-dev python-pip git openssh-server libssl-dev
sudo pip install ansible[all]
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
cat ~/.ssh/id_rsa.pub > ~/.ssh/authorized_keys
git clone https://github.com/lilleswing/dev_box
cd dev_box
vi common/vars/main.yml
bash run.sh
```

## Manual TODO after running

* chsh -s /bin/zsh
* Setup Chrome profiles
* Set default terminal to terminator
* Install jdks (I Couldn't figure out how to auto-accept the license) :(
  * sudo apt-get install oracle-java8-installer
* Keyboard Shortcuts for Spotify
  * dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.PlayPause
* Install GPG keys and pass

# Current Issues
* Docker does not work as docker-engine does not have a .deb yet
* Conda Support
* git config --global user.email, user.name is not getting set
* Fix tmux.conf for copy/paste on osx
