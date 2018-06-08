#!/bin/bash
# -*- coding:utf-8 -*-
############################################
# File Name    : python3.sh
# Created By   : Suluo - sampson.suluo@gmail.com
# Creation Date: 2018-06-08
# Last Modified: 2018-06-08 17:06:07
# Descption    :
############################################

set -x
set -e
if [ ! $1 ];then
    script_path=/home/suluo
else
    script_path=$1
fi
echo "your script_path is $script_path"

mkdir -p /home/suluo/softwares
cd $scrpit_path/softwares

wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tgz

tar -xzf Python-3.6.5.tgz
cd Python-3.6.5
mkdir -p $script_path/.local
./configure --prefix="$script_path/.local"
make && make install
