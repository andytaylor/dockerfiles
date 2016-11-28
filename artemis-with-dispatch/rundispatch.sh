#!/usr/bin/env bash
sed -i -- 's/.private/.'$HOSTNAME'/g' /etc/qpid-dispatch/private-router.conf
sed -i -- 's/.privateNode/.'$HOSTNAME'/g' /etc/qpid-dispatch/private-router.conf
qdrouterd -c /etc/qpid-dispatch/private-router.conf

