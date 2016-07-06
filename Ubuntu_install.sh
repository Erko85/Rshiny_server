#!/bin/bash

codename=$(lsb_release -c -s)
echo "deb http://cran.fhcrc.org/bin/linux/ubuntu $codename/" | sudo tee -a /etc/apt/sources.list > /dev/null
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
sudo add-apt-repository ppa:marutter/rdev
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install r-base r-base-dev
sudo apt-get install gdebi-core
wget https://download3.rstudio.org/ubuntu-12.04/x86_64/shiny-server-1.4.2.786-amd64.deb
sudo gdebi shiny-server-1.4.2.786-amd64.deb
#sudo usermod -aG sudo shiny
#sudo su shiny
#sudo stop shiny-server
#sudo start shiny-server
#sudo vim /etc/shiny-server/shiny-server.conf
#change 

