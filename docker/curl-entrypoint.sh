#!/bin/sh
while true;
do
	curl -sio /tmp/file.txt http://nginx ;
	cat /tmp/file.txt > /dev/stdout;
	echo " ";
	sleep 1;
done;