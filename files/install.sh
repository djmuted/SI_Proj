#!/bin/sh
apk add --no-cache git nginx nodejs npm
npm install webpack webpack-cli -g
cd /opt
git clone https://github.com/djmuted/Redfox
git clone https://github.com/djmuted/MorabarabaExtension
git clone https://github.com/Vesqus/MorabarabaClient
cd Redfox
dotnet publish -o build
mkdir build/Extensions
mkdir build/Config
cp /opt/NLog.config build/
cp /opt/Server.json build/Config/
cd ..
cd MorabarabaExtension
dotnet publish -o build_dll
cp build_dll/MorabarabaExtension.dll ../Redfox/build/Extensions/
cd ..
cd MorabarabaClient
npm install
webpack
cp dist/bundle.js src/html/