#!/bin/bash

# Clear any existing IPtables rules
iptables -F

# Enable Data flow
bash /home/student/Bounce.sh
iptables -A FORWARD -i eth1 -j ACCEPT
iptables -A FORWARD -o eth1 -j ACCEPT
iptables-t nat -A POSTROUTING -o eth0 -j MASQUERADE
bash /home/student/Bounce.sh

