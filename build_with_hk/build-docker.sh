#!/bin/bash

echo "apt update ......"
apt update

echo "install unzip ......"
apt install -y unzip 

echo "get hksdk ......"
wget https://github.com/paratek-custom/assets/raw/main/hksdk/CH-HCNetSDKV6.1.6.45_build20210302_linux64_20210428163105.zip -O hksdk.zip
unzip hksdk.zip

mkdir ${LD_LIBRARY_PATH} -p
mv CH-HCNetSDKV6.1.6.45_build20210302_linux64/lib/* ${LD_LIBRARY_PATH}

## go tool
echo "get go tools ......"
echo "get go tools minify ..."
go get github.com/tdewolff/minify/cmd/minify
echo "get go tools go-bindata ..."
go get github.com/go-bindata/go-bindata/go-bindata
echo "get go tools go-bindata-assetfs ..."
go get github.com/elazarl/go-bindata-assetfs/go-bindata-assetfs

## g++-mingw-w64-x86-64
apt install -y g++-mingw-w64-x86-64 g++-mingw-w64-i686 upx

## clear 。。。。。。
echo "clear caches"
apt remove -y unzip
apt autoremove -y
apt clean
apt autoclean
rm -rf /var/cache/apt/*
rm -rf /tmp/*