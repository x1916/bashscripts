#!/bin/bash
# network scan script
# PB

nmap -sn 192.168.1.0/24 | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" > nettop.tmp

LINES=$(cat nettop.tmp)

for line in $LINES
do
	nmap -sV $line
done

rm nettop.tmp
