#!/bin/bash
set -e

MY_IP=`dig +short myip.opendns.com @resolver1.opendns.com`
echo Connect to http://$MY_IP:9999

projector run PyCharm