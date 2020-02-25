#! /bin/bash

# TO ALLOW ACCESS FROM REMOTE
sudo echo "host   all   all   0.0.0.0/0   md5"  >> /etc/postgresql/11/main/pg_hba.conf

# RESTART THE SERVICE FOR POSTGRES TO ALLOW ALL REMOTE CONNECTIONS.
service postgresql restart
