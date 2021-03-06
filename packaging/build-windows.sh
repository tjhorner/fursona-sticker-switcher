#!/usr/bin/env bash
PREBUILT="https://github.com/electron/electron/releases/download/v4.0.8/electron-v4.0.8-win32-x64.zip"
VERSION="v0.3.0"

mkdir build-win
cd build-win

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
zip "../fursona-sticker-switcher-${VERSION}-win.zip" -r ./*
cd ..
rm -rf build-win
