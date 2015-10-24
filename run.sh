source ~/bin/venvs/ansible/bin/activate
ansible-playbook setup.yml -i HOSTS --ask-sudo-pass --module-path ./ansible_modules
