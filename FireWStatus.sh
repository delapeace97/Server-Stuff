#!/bin/bash

# Stop and disable firewalld service
systemctl stop firewalld
systemctl disable firewalld 

# Verify that firewalld is stopped and disabled
firewalld_status=$(systemctl is-active firewalld)
	echo "Firewalld is stopped"
else 
	echo "Error: firewalld is still running"
fi

firewalld_enabled=$(systemctl is-enabled firewalld)
if [$firewalld_enabled == "disabled" ]; then
	echo "Firewalld is disabled"
else
	echo "Error: Firewalld is still enabled"
fi
