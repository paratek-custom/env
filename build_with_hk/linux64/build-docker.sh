#!/bin/bash

apt update

apt install -y unzip 

wget https://github.com/paratek-custom/assets/raw/main/hksdk/CH-HCNetSDKV6.1.6.45_build20210302_linux64_20210428163105.zip -O hksdk.zip

unzip hksdk.zip

mkdir ${LD_LIBRARY_PATH} -p

mv CH-HCNetSDKV6.1.6.45_build20210302_linux64/lib/* ${LD_LIBRARY_PATH}

## go tool
go get github.com/tdewolff/minify/cmd/minify
go get github.com/go-bindata/go-bindata/go-bindata
go get github.com/elazarl/go-bindata-assetfs/go-bindata-assetfs


## clear 。。。。。。
apt remove -y unzip
apt autoremove -y
apt clean
apt autoclean
rm -rf /var/cache/apt/*
rm -rf /tmp/*