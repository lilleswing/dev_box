#!/bin/bash
wget -q -O - http://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
deb http://pkg.jenkins.io/debian binary