#!/usr/bin/env bash
cd /etc/artemis/profiles/repLiveBroker2/bin
export HOST_IP_ADDRESS=`awk 'NR==1 {print $1}' /etc/hosts`
sed -i 's/localhost/'${HOST_IP_ADDRESS}'/' /etc/artemis/profiles/repLiveBroker2/etc/bootstrap.xml
./artemis run