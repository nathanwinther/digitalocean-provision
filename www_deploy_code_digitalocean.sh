#!/bin/sh

ansible-playbook --ask-vault-pass --user=root --private-key="private/digitalocean_rsa" --inventory-file="www_hosts.ini" --extra-vars="@www_vars_digitalocean.yml" www_deploy_code.yml

