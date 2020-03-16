#!/bin/bash
#--------------------------------------------
# Name:     JSNET ( Juke Network Security Testing )
# Author:   M. Ali Syarief (ali@jukesolutions.com)
# Version:  v2.0
#--------------------------------------------
#
# Developed and tested on Ubuntu 18.04 x64
# May work on other Ubuntu/Debian
#UPDATE
#
sudo apt-add-repository ppa:brightbox/ruby-ng;
sudo apt-get update -q;
#
# Copy JSNet
#
cd JSNet
cp JSNet /usr/bin/
chmod +x /usr/bin/JSNet 
#
#Install PREREQUISITES
#
sudo apt-get install -y perl perl-modules libnet-ssleay-perl libwhisker2-perl python-argparse \
python2.7 python2.7-dev python-dnspython python-requests python-ctypes python-beautifulsoup \
python-pip python-gitdb python-yaml libssl-dev libxml2-dev libxslt1-dev wget python3-pip \
libyaml-dev libsqlite3-dev libpcre3 libpcre3-dev libidn11-dev openssl git ruby2.4 ruby2.4-dev \
build-essential libffi-dev rubygems-integration ruby-dev ruby-full sgml-base xml-core git;
#
apt install ruby2.4;
#
# NMAP
#
sudo apt-get install nmap -y;
# WAF Check
#
sudo apt-get install wafw00f -y;
#
# WhatWeb
#
sudo apt-get install whatweb -y;
#
# SQLMap
#
sudo apt-get install sqlmap -y;
#
# Whois
#
sudo apt-get install whois -y;
#
# TraceROute
#
sudo apt-get install traceroute -y;
#
# curl
#
sudo apt-get install curl -y;
#
# SlowHTTPTest
#
sudo apt-get install slowhttptest -y;
#
# XSpear from gem
#
gem update --system;
gem install XSpear;
#
# Update pip
#
export LC_ALL="en_US.UTF-8";
export LC_CTYPE="en_US.UTF-8";
pip install --upgrade pip;
#
# Install Sublist3r
#
git clone https://github.com/aboul3la/Sublist3r Sublist3r;
cd Sublist3r;
pip install -r requirements.txt;
#



exit 0
