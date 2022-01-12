#!/bin/bash
set -e

MY_IP=`dig +short myip.opendns.com @resolver1.opendns.com`
echo Connect to http://$MY_IP:10000

projector run PyCharm