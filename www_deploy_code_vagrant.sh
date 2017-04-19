#!/bin/sh

PYTHONUNBUFFERED=1 ANSIBLE_FORCE_COLOR=true ANSIBLE_HOST_KEY_CHECKING=false ANSIBLE_SSH_ARGS='-o UserKnownHostsFile=/dev/null -o IdentitiesOnly=yes -o ControlMaster=auto -o ControlPersist=60s' ansible-playbook --connection=ssh --timeout=30 --ask-vault-pass --limit="default" --inventory-file=.vagrant/provisioners/ansible/inventory --extra-vars="@www_vars_vagrant.yml" -v www_deploy_code.yml

