#!/bin/bash
source virtualenv/bin/activate

apt-get -y install mysql-server

mysql_secure_installation
