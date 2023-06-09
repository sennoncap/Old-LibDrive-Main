#!/bin/bash

cd /usr/src/app


curl -L -s $(curl -s "https://github.com/libDrive/libDrive/releases/download/v1.2.1/libDrive.Server.6a94913.zip" tar xf - -C .

pip3 install -r requirements.txt -q --no-cache-dir

gunicorn main:app
