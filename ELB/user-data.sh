#!/bin/bash
sudo apt update
sudo apt-get install apache2 -y
cd /var/www/html
echo "<html><body><h1> Hello $(hostname -f) </html></body></h1>" > index.html
systemctl restart apache2
systemctl enable apache2