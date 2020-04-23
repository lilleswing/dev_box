ansible-playbook setup.yml -f 100 -v -i HOSTS \
                --ask-become-pass \
                --module-path ./ansible_modules
