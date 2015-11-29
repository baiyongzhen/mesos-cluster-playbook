# -*- mode: ruby -*-
# vi: set ft=ruby :

# Debian - oar-team/debian8
# Ubuntu - ubuntu/trusty64, ubuntu/vivid64
# CentOS - centos/7

vm_box = "centos/7"

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 1
  end

  config.ssh.insert_key = false

  config.vm.define 'master1' do |c|
    c.vm.network "private_network", ip: "192.168.100.11"
    c.vm.box = vm_box
    c.vm.hostname = "master1"
  end

  config.vm.define 'slave1' do |c|
    c.vm.network "private_network", ip: "192.168.100.21"
    c.vm.box = vm_box
    c.vm.hostname = "slave1"

    c.vm.provision "ansible" do |ansible|
      ansible.verbose = "vv"
      ansible.playbook = "site.yml"
      ansible.inventory_path = "./vagrant"
      ansible.limit = 'all'
    end
  end

end