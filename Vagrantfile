# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "centos/7"

  config.vm.define "deploy" do |deploy|
    deploy.vm.hostname = "deploy.server"
    deploy.vm.network "private_network", ip: "192.168.33.10"
    deploy.vm.provision :shell do |s|
      s.path = 'vagrant-script/generic.sh'
    end
    end  


  config.vm.define "api" do |api|
    api.vm.hostname = "api.server"
    api.vm.network "private_network", ip: "192.168.33.20"
    api.vm.provision :shell do |s|
      s.path = 'vagrant-script/generic.sh'
    end
    end  

end
