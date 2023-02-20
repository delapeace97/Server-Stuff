!#bin/sh

ifconfig eth1 down
ifconfig eth0 down
ifconfig eth1 up 
ifconfig eth0 up

ping 10.0.0.6
