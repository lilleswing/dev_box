#!/usr/bin/env bash
cd /tmp
wget http://tentacruel.bb.schrodinger.com/public/qsar_smash/qsar_gpu-latest.tar.gz
tar xzf qsar_gpu-latest.tar.gz
sudo rm /opt/schrodinger_ml
sudo mv schrodinger_ml /opt/schrodinger_ml