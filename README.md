# dev_box
Ansible Playbook for setting up a dev box on xubuntu 15.10

## Manual TODO before running
* Install Ansible/python
* Install openssh-server
* Allow Passwordless ssh to localhost
 
``` bash
sudo apt-get install python-virtualenv openssh-server
mkdir -p ~/bin/venvs
cd ~/bin/venvs
virtualenv ansible
source ansible/bin/activate
pip install ansible
```

## Manual TODO after running

* Install Dropbox
* Change Shell to zsh
* Setup Chrome profiles
* Set default terminal to terminator
* Set desktop wallpapers
* Install jdks
  * I Couldn't figure out how to auto-accept the license :(
  * sudo apt-get install oracle-java6-installer
  * sudo apt-get install oracle-java7-installer
  * sudo apt-get install oracle-java8-installer
* Install Evernote As Chrome Webapp and link to /usr/local/bin/evernote
* Install Postman as chrome webapp and link to /usr/local/bin/postman
