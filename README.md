# dev_box
Ansible Playbook for setting up a dev box on xubuntu 18.04

## Manual TODO before running
Trust `devtools/Dockerfile` for exact setup instructions
``` bash
apt-get install -y python-dev python3-pip git sudo software-properties-common
yes | pip3 install "ansible"
git clone https://github.com/lilleswing/dev_box
cd dev_box
bash run.sh
```

## Manual TODO after running

* chsh -s /bin/zsh
* Setup Chrome profiles
* Set default terminal to terminator
* Install GPG keys and pass
