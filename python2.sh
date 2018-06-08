#!/bin/bash
# -*- coding:utf-8 -*-
############################################
# File Name    : python2.7.sh
# Created By   : Suluo - sampson.suluo@gmail.com
# Creation Date: 2018-06-08
# Last Modified: 2018-06-08 16:55:20
# Descption    :
############################################

set -x
set -e

if [-n "$1"];then
    script_path=$1
else
    script_path=/home/suluo
echo "your path is $script_path"

mkdir -p $script_path/softwares
cd $script_path/softwares
# python2.7
wget https://www.python.org/ftp/python/2.7.15/Python-2.7.15.tgz
tar -xzf Python-2.7.15.tgz
cd Python-2.7.15
mkdir -p $script_path/.local
./configure --prefix="$script_path/.local"
make && make install

# setuptools
cd $script_path/softwares
wget --no-check-certificate https://pypi.python.org/packages/e9/c3/5986db56819bd88e1a250cad2a97249211686b1b7b5d95f9ab64d403a2cb/setuptools-38.2.5.zip#md5=abfd02fba07b381c3a9682a32d765cc6
unzip setuptools-38.2.5
cd setuptools-38.2.5
$script_path/.local/bin/python2.7 setup.py install

# pip 
cd $script_path/softwares
wget --no-check-certificate https://pypi.python.org/packages/41/27/9a8d24e1b55bd8c85e4d022da2922cb206f183e2d18fee4e320c9547e751/pip-8.1.1.tar.gz#md5=6b86f11841e89c8241d689956ba99ed7
tar -xzf pip-8.1.1.tar.gz
cd pip-8.1.1
$script_path/.local/bin/python2.7 setup.py install


