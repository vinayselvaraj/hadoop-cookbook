# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.network "public_network", bridge: "en0: Ethernet"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "8192"
  end

  config.vm.provision "shell", inline: <<-SHELL
    yum -y update
  SHELL
end
