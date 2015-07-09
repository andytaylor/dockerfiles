service docker stop
ip link set dev docker0 down
brctl delbr docker0
iptables -t nat -F POSTROUTING
brctl addbr docker0
ip addr add 192.168.5.1/24 dev docker0 
ip link set dev docker0 up
echo 'DOCKER_OPTS="-b=bridge0"' >> /etc/default/docker
