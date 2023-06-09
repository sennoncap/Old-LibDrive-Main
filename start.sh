#!/bin/bash

cd /usr/src/app

wget -c https://github.com/psiphon15/RailwayLib1/releases/download/randomfix/libDrive.Server.v1.4.7.tar -O - | tar -xz

pip3 install -r requirements.txt -q --no-cache-dir

gunicorn main:app
