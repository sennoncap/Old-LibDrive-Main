#!/bin/bash

cd /usr/src/app

pip3 install wget

apt install unzip -y

wget https://github.com/psiphon15/RailwayLib1/releases/download/randomfix/MAINlibDrive.Server.6a94913.zip -O temp.zip
unzip temp.zip

pip3 install -r requirements.txt -q --no-cache-dir

gunicorn main:app
