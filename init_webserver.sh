#!/bin/bash

# Create mount volume for logs
  sudo su - root
  mkfs.ext4 /dev/sdf
  mount -t ext4 /dev/sdf /var/log

# Install & Start nginx server
  yum search nginx
  amazon-linux-extras install nginx1 -y
  systemctl start nginx
  systemctl enable nginx

s3 cp s3://democode1988/index.html /tmp/ --recursive

# Print the hostname which includes instance details on nginx homepage
  sudo cp /tmp/index.html > /usr/share/nginx/html/index.html
  #sudo aws s3 cp s3://democode1988/index.html /usr/share/nginx/html/index.html