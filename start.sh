#! /bin/bash

wget 'https://openresty.org/download/nginx-1.17.8.tar.gz'
tar -zxvf nginx-1.17.8.tar.gz

chmod 777 music.py
python music.py
