# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  config.vm.box = "precise64"
  config.vm.forward_port 8098, 8098
  config.vm.share_folder "files", "/tmp/files","files"
  config.vm.provision  :puppet,
    :module_path => 'modules'
   


end
