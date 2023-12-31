#!/bin/bash

set -e

# This script won't work for aws, as it's black listed

echo -e "#### Creating SSL Certificates ####\n\n"
echo -e "This script won't work for aws, as it's black listed in letsencrypt\nso if youre running on aws please press ctrl+c with in 5 seconds"

sleep 5

echo "please enter your FQDN(fully qualified domain name) name : "
read dns_name
ssh_ansible_user=$(whoami)
certbot_home=/etc/letsencrypt/archive/$dns_name


#Check certbot installed or not
if [ $(which certbot) ]; then
    echo "certbot is already installed"
else
    sudo apt-get update
    sudo apt-get install -y software-properties-common
    sudo add-apt-repository ppa:certbot/certbot -y
    sudo apt-get update
    sudo apt-get install -y certbot
fi

sudo certbot certonly --standalone -d $dns_name

sudo cp $certbot_home/privkey1.pem /home/$ssh_ansible_user/site.key
sudo cp $certbot_home/fullchain1.pem /home/$ssh_ansible_user/site.crt
sudo chown -R $ssh_ansible_user:$ssh_ansible_user /home/$ssh_ansible_user/site.key /home/$ssh_ansible_user/site.crt
sudo chmod 775 /home/$ssh_ansible_user/site.crt /home/$ssh_ansible_user/site.key


echo -e "Please take a note of these, and fill it up in config file: \
    \n\n    dns_name: $dns_name \n
    cert_path: /home/$ssh_ansible_user/site.crt \n
    key_path: /home/$ssh_ansible_user/site.key\n
!!! please remove certs after the installation process. or keep it in a safe place."
