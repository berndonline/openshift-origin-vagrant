# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true
  config.vm.provider :libvirt do |domain|
    domain.management_network_address = "10.255.1.0/24"
    domain.management_network_name = "wbr1"
    domain.nic_adapter_count = 130
  end
  #Generating Ansible Host File at following location:
  #    ./.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "./helper_scripts/empty_playbook.yml"
  end

  ##### DEFINE VM for origin-master #####

  config.vm.define "origin-master" do |device|
    device.vm.host_name = "origin-master"
    device.vm.box = "centos/7"

    device.vm.provider :libvirt do |v|
      v.memory = 4096
    end
  config.vm.synced_folder '.', '/vagrant', disabled: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
  device.vm.provision :shell , path: "./helper_scripts/config_server.sh"
end

  config.vm.define "origin-etcd" do |device|
    device.vm.host_name = "origin-etcd"
    device.vm.box = "centos/7"

    device.vm.provider :libvirt do |v|
      v.memory = 4096
    end
  config.vm.synced_folder '.', '/vagrant', disabled: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
  device.vm.provision :shell , path: "./helper_scripts/config_server.sh"
end

  config.vm.define "origin-infra" do |device|
    device.vm.host_name = "origin-infra"
    device.vm.box = "centos/7"

    device.vm.provider :libvirt do |v|
      v.memory = 4096
    end
  config.vm.synced_folder '.', '/vagrant', disabled: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
  device.vm.provision :shell , path: "./helper_scripts/config_server.sh"
end

  config.vm.define "origin-node" do |device|
    device.vm.host_name = "origin-node"
    device.vm.box = "centos/7"

    device.vm.provider :libvirt do |v|
      v.memory = 4096
    end
  config.vm.synced_folder '.', '/vagrant', disabled: false

  config.vm.boot_timeout = 400

  config.ssh.forward_agent = true
  config.ssh.guest_port = 22
  config.ssh.insert_key = false
  device.vm.provision :shell , path: "./helper_scripts/config_server.sh"
end

end
