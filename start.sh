#! /bin/bash

cd app

wget 'https://openresty.org/download/nginx-1.17.8.tar.gz'
tar -zxvf nginx-1.8.1.tar.gz

wget 'https://github.com/arut/nginx-rtmp-module/archive/master.zip'
unzip master.zip 

cd nginx-1.8.1

./configure --with-http_ssl_module --add-module=../nginx-rtmp-module-master

exit 0

chmod 777 wsgi.py
python wsgi.py
