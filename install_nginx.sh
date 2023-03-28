#!/bin/sh
sudo apt install nginx -y
cd /var/www/html
mkdir clone2
cd clone2/
echo "<h1>This is cloneserver2 run by script!</h1>" > index.html
cd /etc/nginx/sites-available
echo "server {
        listen 80;
        listen [::]:80;

        root /var/www/html/clone2;
        index index.html;

        server_name test.cloneserver2.com;

        location / {
                try_files $uri $uri/ =404;
        }
}" > clone2mgbhone
cd ../sites-enabled
ln -s ../sites-available/clone2mgbhone .