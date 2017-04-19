# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  #config.vm.box = "ubuntu/trusty64"
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.provider "virtualbox" do |vb|
    vb.name = "DigitalOcean"
    vb.cpus = 1
    vb.memory = "512"
  end
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "www_playbook.yml"
    ansible.extra_vars = "www_vars_vagrant.yml"
    ansible.ask_vault_pass = true
    ansible.verbose = "v"
  end
end
