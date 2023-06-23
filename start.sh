#!/bin/bash

cd /usr/src/app

pip3 install wget

apt install unzip -y

wget https://github.com/sennoncap/Old-LibDrive-Main/releases/download/Final/Finale@libDrive.Server.v1.4.7.zip -O temp.zip

unzip temp.zip

pip3 install -r requirements.txt -q --no-cache-dir

gunicorn main:app
