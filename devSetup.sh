#!/bin/bash

# Docker install

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Git install

sudo apt install git

# SSH keys 

echo "Email for SSH"

read sshVar

ssh-keygen -t ed25519 -C $sshVar
ssh-add ~/.ssh/id_ed25519

# Go Lang
sudo snap install go --classic

echo "alias editalias='vi ~/.bashrc'" >> ~/.bashrc
echo "alias updatealias='source ~/.bashrc'" >> ~/.bashrc
echo "alias taskdb='cd ~/projects/taskDB && vim .'" >> ~/.bashrc
echo "alias tabman='cd ~/projects/tabManagement && vim .'" >> ~/.bashrc
echo "alias devenv='cd ~/projects/devSetup && vim .'" >> ~/.bashrc
echo "alias database='cd ~/projects/database && vim .'" >> ~/.bashrc
echo "alias sudoku='cd ~/projects/sudoku/Sudoku && vim .'" >> ~/.bashrc
echo "alias off='sudo shutdown -h now'" >> ~/.bashrc
echo "alias lext='bash loadextension.sh'" >> ~/.bashrc
echo "alias gs='git status'" >> ~/.bashrc
echo "alias ga='git add .'" >> ~/.bashrc
echo "alias gc='git commit -m'" >> ~/.bashrc
echo "alias gp='git push origin master'" >> ~/.bashrc
echo "alias noteserver='cd ~/projects/noteServer && vim .'" >> ~/.bashrc
