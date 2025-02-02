#!/bin/sh

# Kali Linux configuration script created by gedemais

# Update package lists and upgrade existing packages
sudo apt update && sudo apt upgrade -y

# Install openssl
sudo apt install -y openssl

# Install gpg
sudo apt install -y gpg

# Install terminator
sudo apt install -y terminator

# Install asciiquarium for breaks
sudo apt install -y asciiquarium

# Install MetaSploit
sudo apt install -y metasploit-framework

# Install nmap
sudo apt install -y nmap

# Install lynis
sudo apt install -y lynis

# Copy lynis config
curl https://raw.githubusercontent.com/gedemais/config/refs/heads/master/kali/lynisrc > ~/.lynisrc

# Activate it for both bash and zsh
echo "bash ~/.lynisrc &" >> ~/.bashrc
echo "zsh ~/.lynisrc &" >> ~/.zshrc

echo "All installations complete !"
