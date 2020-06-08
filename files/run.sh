#!/bin/sh
nginx -g 'pid /tmp/nginx.pid;'
cd /opt/Redfox/build
dotnet Redfox.dll