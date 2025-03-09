#!/bin/bash

# Install necessary dependencies
apt update
apt install -y gcalcli conky-all

# Download the Conky repository  ( I commented this out since it would make sense that you already have this downloaded if you are running this file)
# git clone https://github.com/WoodardDigital/Conky.git

# Create the .conky directory in the user's home directory
mkdir -p /home/$USER/.conky

# Copy the contents of the Conky repository to the .conky directory
cp -r * /home/$USER/.conky/

# Add commands to startup to run Conky with specific configurations
echo "conky -c $USER/.conky/LinuxLarge" >> ~/.bashrc
echo "conky -c $USER/.conky/conkyrc.calendar" >> ~/.bashrc


