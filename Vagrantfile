# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    # We will use Ubuntu 14
    default_box = "ubuntu/trusty64"

    # We really need vagrant-cachier
    # https://github.com/fgrehm/vagrant-cachier
    if Vagrant.has_plugin?("vagrant-cachier")
        config.cache.scope = :box
    end


    # Create a private network, which allows host-only access to the machine
    # using a specific IP.
    # config.vm.network "private_network", ip: "192.168.33.10"

    # Create a public network, which generally matched to bridged network.
    # Bridged networks make the machine appear as another physical device on
    # your network.
    # config.vm.network "public_network"

    # We really need not to share additional folders.
    # Will use ansible if needed
    ## config.vm.synced_folder "../data", "/vagrant_data"

    config.vm.define :unicorn do |unicorn|
        unicorn.vm.box = default_box
        unicorn.vm.host_name = "unicorn.dev"

        unicorn.vm.network "private_network", ip: "192.168.30.10"
        config.vm.provider :virtualbox do |vb|
            vb.name = "unicorn"
            vb.memory = 512
            vb.cpus = 1
        end
        #config.vm.provision "shell", path: "vagrant/unicorn.sh"

    end

    config.vm.define :pony do |pony|
        pony.vm.box = default_box
        pony.vm.host_name = "pony.dev"

        pony.vm.network "private_network", ip: "192.168.30.20"
        config.vm.provider :virtualbox do |vb|
            vb.name = "pony"
            vb.memory = 512
            vb.cpus = 1
        end
        # config.vm.provision "shell", path: "vagrant/pony.sh"
    end



    # Let it be ascetic
#     config.vm.provider "virtualbox" do |vb|
#         vb.name = "mvm probe"
#         vb.memory = 512
#         vb.cpus = 1
#     end
    config.vm.provision "shell", path: "vagrant/locale.sh", privileged: false
    config.vm.provision "shell", path: "vagrant/provisioner.sh"
end
