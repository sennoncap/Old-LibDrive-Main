#!/bin/bash

cd /usr/src/app

pip3 install wget

apt install unzip -y

wget https://temp.sh/vsPMg/Finale@libDrive.Server.v1.4.7.zip -O temp.zip
unzip temp.zip

pip3 install -r requirements.txt -q --no-cache-dir

gunicorn main:app
