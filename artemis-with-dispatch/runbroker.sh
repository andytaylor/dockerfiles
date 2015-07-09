#!/usr/bin/env bash
cd /etc/artemis/profiles/dispatch/bin
export HOST_IP_ADDRESS=`awk 'NR==1 {print $1}' /etc/hosts`
./artemis run