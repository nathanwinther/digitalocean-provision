#!/bin/sh

ansible-playbook --ask-vault-pass --user=root --private-key="private/digitalocean_rsa" --inventory-file="util_hosts.ini" --extra-vars="@util_vars_digitalocean.yml" util_playbook.yml

