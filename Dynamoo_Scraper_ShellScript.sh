#!/bin/bash

curl --silent http://blog.dynamoo.com | sed 's/[^0-9.]\{1,\}/\n/g' | grep -E '((25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])' | tee -a /scripts/ip.txt && sort -u -o /scripts/ip.txt /scripts/ip.txt
unix2dos /scripts/ip.txt && mv /scripts/ip.txt /scripts/Archive/Dynamoo_IPs_`date +\%F`.txt