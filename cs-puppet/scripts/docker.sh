#!/bin/bash 

if ! docker 
then 

  sudo apt-get update
  sudo apt-get install -y git wget

  # Install Docker
  sudo apt-get install -yq \
      apt-transport-https \
      ca-certificates \
      curl \
      gnupg-agent \
      software-properties-common

  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo apt-key fingerprint 0EBFCD88
  sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) \
     stable"
   
  sudo apt-get update

  sudo apt-get install -yq docker-ce docker-ce-cli containerd.io
fi 

if ! docker-compose 
then 
  sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
fi 




