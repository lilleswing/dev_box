#!/bin/bash
echo deb http://repository.spotify.com stable non-free | tee /etc/apt/sources.list.d/rlang.list
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | apt-key add -
