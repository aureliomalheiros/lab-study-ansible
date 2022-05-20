hosts = {
    "ansible"   => {"memory" => "1024", "cpu" => "2", "ip" => "2", "image" => "ubuntu/jammy64"},
    "target01"   => {"memory" => "1024", "cpu" => "2", "ip" => "3", "image" => "centos/7"},
    "target02"   => {"memory" => "1024", "cpu" => "2", "ip" => "4", "image" => "ubuntu/jammy64"},
}

Vagrant.configure ("2") do |config|
    hosts.each do |name, conf|
        config.vm.define "#{name}" do |server|
            server.vm.box = "#{conf["image"]}"
            server.vm.hostname = "#{name}"
            server.vm.network "private_network", ip: "192.168.56.#{conf["ip"]}"
            server.vm.provider "virtualbox" do |metric|
                metric.name = "#{name}"
                metric.memory = conf["memory"]
                metric.cpus = conf["cpu"]
            end
            if "#{name}" == "ansible"
              server.vm.provision "shell", path: "hosts/ansible.sh"
            end
            if "#{name}" == "host01"
              server.vm.provision "shell", path: "hosts/host01.sh"
            end
            if "#{name}" == "host02"
              server.vm.provision "shell", path: "hosts/host02.sh"
            end
            
        end
    end
end