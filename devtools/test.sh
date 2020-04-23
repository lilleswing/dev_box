#!/bin/bash
ansible-playbook setup.yml -f 100 \
                -v \
                -i HOSTS \
                --module-path ./ansible_modules
