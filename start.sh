#! /bin/bash

mkdir nginx

cd nginx

wget 'https://openresty.org/download/nginx-1.17.8.tar.gz'
tar -zxvf nginx-1.8.1.tar.gz

wget 'https://github.com/arut/nginx-rtmp-module/archive/master.zip'
unzip master.zip 

cd nginx-1.8.1

./configure --with-http_ssl_module --add-module=../nginx-rtmp-module-master

exit 0

mkdir etc/init.d/nginx
cd nginx
wget "https://raw.github.com/JasonGiedymin/nginx-init-ubuntu/master/nginx"
chmod +x /etc/init.d/nginx
update-rc.d nginx defaults
exit 0

chmod 777 wsgi.py
python wsgi.py