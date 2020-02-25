#! /bin/bash

# GET THE REPO SIGNING KEY
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -


# ADD REPO CONTENTS TO UBUNTU
RELEASE=$(lsb_release -cs)
echo "deb http://apt.postgresql.org/pub/repos/apt/ ${RELEASE}"-pgdg main | sudo tee  /etc/apt/sources.list.d/pgdg.list


# VIEW CONTENTS ADDED TO REPOSITORY
cat /etc/apt/sources.list.d/pgdg.list

