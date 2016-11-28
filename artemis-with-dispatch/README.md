to create the docker/artemis image follow these instructions
 
1.  download dispatch from https://github.com/apache/dispatch
2. tar up the dispatch directory, 'tar cvf dispatch.tar dispatch', then gzip it 'gzip dispatch.tar' and copy into this 
directory (dockerfiles/artemis-with-dispatch)
3. check out Artemis from https://github.com/apache/activemq-artemis and build the distro as per the instructions
4. copy apache-artemis-1.0.1-SNAPSHOT-bin.tar.gz to this directory (dockerfiles/artemis-with-dispatch)
5. cd into the dockerfiles/artemis-with-dispatch directory and run 'docker build -t artemis-dispatch .'

Note that the dispatch is configured to open a connector to a router outside of the container on 192.168.5.1. This is the docker0 
network interface that is used and will bridge the connction to the docker host machine. I use a script 'etc/configDocker.sh'
to set the ip to this, alternatively configure private-router.conf before building your image. You will need to run 
Dispatch on the host machine and bind to the same address.

6. you can then create a container running dispatch via 'docker run -t -i  -name dispatch_container artemis-dispatch /bin/bash' and run 
'qdrouterd -c /etc/qpid-dispatch/private-router.conf' or just run 'docker run -t -i  -name dispatch_container artemis-dispatch rundispatch.sh'
to start the router directly.

every step from here is dependant on using my branch https://github.com/andytaylor/activemq-artemis/tree/dispatch_proto
 
5 then you can start an artemis container by running 'docker run -t -i -e "QOS=qos2"  -name artemis_container --link dispatch_container:router artemis-dispatch runbroker.sh'

The last stage will start Artemis which will register itself with Dispatch.
