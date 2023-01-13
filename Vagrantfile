# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2204"
  #config.vm.box = "generic/ubuntu2004"
  config.ssh.insert_key = false

  config.vm.synced_folder ".", "/home/vagrant/longhorn-playground", owner: "vagrant", group: "vagrant"
  
  config.vm.define "master-0" do |c|
    c.vm.hostname = "master-0"
    c.vm.network "private_network", ip: "192.168.56.10"
    c.vm.network "forwarded_port", guest: 22, host: 2310, id: "ssh"
    c.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"
      vb.cpus = 2
    end
  end

  (0..2).each do |n|
    config.vm.define "worker-#{n}" do |c|
      c.vm.hostname = "worker-#{n}"
      c.vm.network "private_network", ip: "192.168.56.2#{n}"
      c.vm.network "forwarded_port", guest: 22, host: 2320 + n, id: "ssh"
      c.vm.provider "virtualbox" do |vb|
        vb.memory = "3072"
        vb.cpus = 2
      end
    end
  end
end
