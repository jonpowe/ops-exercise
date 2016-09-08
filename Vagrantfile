# -*- mode: ruby -*-
# vi: set ft=ruby :
plugins = %w(vagrant-berkshelf)
plugins.each do | plugin |
  unless Vagrant.has_plugin?(plugin)
    system("vagrant plugin install #{plugin}") || exit!
    exit system("vagrant",*ARGV)
  end
end

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.berkshelf.enabled=true
  config.berkshelf.berksfile_path= "cookbooks/ops_ex/Berksfile"
  config.vm.provision :chef_solo do |chef|
    chef.add_recipe 'ops_ex::default'
    chef.node_name = 'JonTestBox'
  end
end
