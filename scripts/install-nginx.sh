#!/bin/bash
if ! command -v nginx &> /dev/null
then
    echo "Nginx not found. Installing..."
    apt-get update
    apt-get install -y nginx
else
    echo "Nginx is already installed."
fi

systemctl enable nginx
systemctl start nginx
