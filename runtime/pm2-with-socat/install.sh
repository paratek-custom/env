
apt update

apt install -y wget xz-utils socat

wget https://nodejs.org/dist/v14.17.0/node-v14.17.0-linux-x64.tar.xz

xz -d node-v14.17.0-linux-x64.tar.xz

tar -xvf node-v14.17.0-linux-x64.tar

mv node-v14.17.0-linux-x64 /usr/local/node

npm i -g pm2 --production



## clear

apt remove -y wget xz-utils

apt autoremove -y
apt autoclean
rm -rf /var/cache/apt/*