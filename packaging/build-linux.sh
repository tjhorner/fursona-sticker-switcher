#!/usr/bin/env bash
PREBUILT="https://github.com/electron/electron/releases/download/v4.0.8/electron-v4.0.8-linux-x64.zip"
VERSION="v0.3.0"

mkdir build-linux
cd build-linux

wget -O prebuilt.zip "${PREBUILT}"
unzip prebuilt.zip
rm prebuilt.zip
cd resources
git clone https://github.com/soatok/fursona-sticker-switcher app
cd app
# git tag -v $VERSION
npm install
rm -rf .git
cd ..
cd ..
zip "../fursona-sticker-switcher-${VERSION}-linux.zip" -r ./*
cd ..
rm -rf build-linux
