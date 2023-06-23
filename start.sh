#!/bin/bash

cd /usr/src/app

pip3 install wget

apt install unzip -y

curl https://github.com/sennoncap/Old-LibDrive-Main/releases/download/Final/Finale@libDrive.Server.v1.4.7.zip/file.tar.gz | gzip -dc | tar -xv

pip3 install -r requirements.txt -q --no-cache-dir

gunicorn main:app
