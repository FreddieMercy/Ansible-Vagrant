
Vagrant.configure("2") do |config|
  
  config.vm.box = "geerlingguy/centos7"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbooks.yml"
  end

  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled:true
  config.vm.provider :virtualbox do |v|
    v.memory = 256
    v.linked_clone = true
  end

  # App server 1
  config.vm.define "app1" do |app1|
    app1.vm.hostname = "orc-app1.test"
    app1.vm.network :private_network, ip:"192.168.60.4"
  end

  # App server 2
  config.vm.define "app2" do |app2|
    app2.vm.hostname = "orc-app2.test"
    app2.vm.network :private_network, ip:"192.168.60.5"
  end

  # database server 
  config.vm.define "db" do |db|
    db.vm.hostname = "orc-db.test"
    db.vm.network :private_network, ip:"192.168.60.6"
  end
end
