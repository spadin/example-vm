# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "breqwatr/trusty64"

  # port 3000 on the vm can be reached on port 6000 of the host machine
  config.vm.network "forwarded_port", guest: 3000, host: 6000

  # pass my host ssh keys machines through to the vm
  # (makes cloning from Github much simpler)
  config.ssh.forward_agent = true

  # configure based on your host machine's hardware
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 4
  end

  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = "cookbooks"

    chef.add_recipe('helper::setup')

    chef.add_recipe('zsh::install')
    chef.add_recipe('zsh::setup')

    chef.add_recipe('git::install')

    chef.add_recipe('ruby::rbenv')
    chef.add_recipe('ruby::ruby_build')

    chef.add_recipe('tmux::install')
    chef.add_recipe('homeshick::install')
    chef.add_recipe('homeshick::setup')

    chef.add_recipe('vim::install')
    chef.add_recipe('vim::setup')

    chef.add_recipe('postgres::install')
    chef.add_recipe('postgres::setup')
    chef.add_recipe('sqlite::install')

    chef.add_recipe('helper::cleanup')
  end
end
