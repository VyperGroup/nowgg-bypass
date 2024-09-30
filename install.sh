#!/bin/bash
cert="https://raw.githubusercontent.com/VyperGroup/nowgg-bypass/refs/heads/dev/nowgg.crt"

wget -qO- $cert | sudo tee /usr/local/share/ca-certificates/ngg.crt
wget -qO- $cert | sudo tee /etc/ssl/ngg.crt
sudo update-ca-certificates
export NODE_EXTRA_CA_CERTS="/etc/ssl/ngg.crt"
export NODE_TLS_REJECT_UNAUTHORIZED='0'
echo "export NODE_EXTRA_CA_CERTS='/etc/ssl/ngg.crt'" >> ~/.bashrc
echo "export NODE_TLS_REJECT_UNAUTHORIZED='0'" >> ~/.bashrc
echo "104.167.215.178 now.gg" >> /etc/hosts
echo "Bypass implemented!"
echo "restart uv/node/pm2 to apply new env variable"
