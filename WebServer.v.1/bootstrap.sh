#!/usr/bin/env bash
sudo yum install -y epel-release
sudo yum install nginx -y
sudo cp /vagrant/nginx/conf.d/upstream.conf /etc/nginx/conf.d/upstream.conf
sudo cp /vagrant/nginx/nginx.conf /etc/nginx/nginx.conf
sudo systemctl start nginx.service
sudo systemctl enable nginx.service 
sudo yum install -y httpd
sleep 3
sudo cp -r /vagrant/www/* /var/www/
sudo cp -r /vagrant/httpd/conf.d/* /etc/httpd/conf.d/
sudo cp -r /vagrant/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf
sudo systemctl enable httpd.service 
sudo bash -c " sed -i -e 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config" && sudo reboot
