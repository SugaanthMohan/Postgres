#! /bin/bash

# CURRENT ACCESS LIST 
sudo ss -tunelp | grep 5432

# ALLOW REMOTE HOST ACCESS

cat /etc/postgresql/11/main/postgresql.conf >/tmp/1.conf

cat /tmp/1.conf | perl -pe  "s/[#]?\s?listen_addresses\s?=\s?[\'|\"].*[\'|\"]/listen_addresses = '\*'/g" | sudo tee /etc/postgresql/11/main/postgresql.conf

rm -vf /tmp/1.conf

# CLOSE ACTIVE FIREWALL
sudo ufw allow 5432/tcp

# RESTART POSTGRES SERVICE
sudo systemctl restart postgresql

# CURRENT ACCESS LIST 
sudo ss -tunelp | grep 5432
