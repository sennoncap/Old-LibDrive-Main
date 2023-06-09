#!/bin/bash

cd /usr/src/app


curl -L -s $(curl -s "https://github.com/psiphon15/RailwayLib1/releases/download/randomfix/libDrive.Server.v1.4.7.tar" tar xf - -C .

pip3 install -r requirements.txt -q --no-cache-dir

gunicorn main:app
