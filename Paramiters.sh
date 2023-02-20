#!/bin/bash

# Set IP address and net mask of eth1
ip adress add 192.168.1.10/24 dev eth1

# Set default GW 
ip route add default via 192.168.1.1
