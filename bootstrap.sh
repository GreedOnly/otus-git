#!/usr/bin/env bash
yum install -y epel-release
yum install nginx -y
cp /vagrant/nginx/conf.d/upstream.conf /etc/nginx/conf.d/upstream.conf
cp /vagrant/nginx/nginx.conf /etc/nginx/nginx.conf
sudo systemctl start nginx.service
sudo systemctl enable nginx.service 
yum install -y httpd
sleep 3
cp -r /vagrant/www/html/* /var/www/
cp -r /vagrant/httpd/conf.d/* /etc/httpd/conf.d/
cp -r /vagrant/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf
systemctl enable httpd.service 
bash -c " sed -i -e 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config" && sudo reboot
