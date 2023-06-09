#!/bin/bash

cd /usr/src/app


curl -L -s $(curl -s "https://github.com/libDrive/libDrive/releases/download/v1.4.7/libDrive.Server.v1.4.7.tar" tar xf - -C .

pip3 install -r requirements.txt -q --no-cache-dir

gunicorn main:app
