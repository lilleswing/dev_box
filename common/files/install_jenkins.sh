#!/bin/bash
wget -q -O - http://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo echo "deb http://pkg.jenkins.io/debian binary" >> /etc/apt/sources.list