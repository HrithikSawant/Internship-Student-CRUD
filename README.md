# Level 4 - Continuous Delivery

## Overview

At the end of [Level 3](https://github.com/HrithikSawant/Internship-Student-CRUD/tree/level-3), we learned about Continuous Integration and how to implement it. We also learned how to deploy the built application to our local system. In this level, we will learn how to deploy our application on a remote system using Continuous Delivery.

## Building and Running the App

## Vagrantfile
```
Vagrant.configure("2") do |config|
  config.ssh.insert_key = false

  config.vm.define "vagrant_1" do |worker|
    worker.vm.box = "ubuntu/bionic64"
  end

  config.vm.network "public_network", ip: "192.168.0.17", bridge: "wlp2s0"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = "1"

  config.vm.provision "shell", env: {"DOCKER_HUB_USERNAME" => "<DOCKER_HUB_USERNAME>", "DOCKER_HUB_PASSWORD" => "<DOCKER_HUB_PASSWORD>"}, inline: <<-SHELL
    apt-get update 
    apt-get install -y git lsb-release ca-certificates apt-transport-https software-properties-common curl
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    apt update
    apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
    docker compose version
    echo ${DOCKER_HUB_PASSWORD} | base64 -d | docker login --username ${DOCKER_HUB_USERNAME} --password-stdin
  SHELL
  end
end
```

### Step 1: Setting up Vagrant

* Follow the guide [Setting up HashiCorp Vagrant](https://developer.hashicorp.com/vagrant/docs/installation) to set up a Vagrant VM
* Use the provided Vagrantfile to configure the VM
* Replace `<DOCKER_HUB_USERNAME>` and `<DOCKER_HUB_PASSWORD>` with your Docker Hub credentials and encrypt the password using base64 encoding
* Generate an SSH key for the Vagrant VM and add it to the GitHub Actions Secrets
* Run `vagrant up` to start the VM

### Step 2: Deploying the Application

* Use the newly created Vagrant VM as the target environment for Continuous Delivery
* Deploy the application using the built Docker artifacts and the GitHub Actions workflow

## Expected Outcomes

* Understand how to deploy an application on a remote system using Continuous Delivery
* Experience with setting up and configuring a Vagrant VM for use as a production environment
* Hands-on experience with deploying an application using built Docker artifacts and GitHub Actions workflow

*Note: Make sure to follow the instructions provided in the guide "Setting up HashiCorp Vagrant" and also replace `<DOCKER_HUB_USERNAME>` and `<DOCKER_HUB_PASSWORD>` with your Docker Hub credentials and encrypt the password using base64 encoding before proceeding with `vagrant up`*