to create the docker image follow these instructions
 
1.  download dispatch from https://github.com/apache/dispatch
2. tar up the dispatch directory, 'tar cvf dispatch.tar dispatch', then gzip it 'gzip dispatch.tar' and copy into this 
directory (dockerfiles/dispatch)
3. cd into the dockerfiles/dispatch directory and run 'docker build -t atest .'
4. you can then create a container via 'docker run -t -i  -name atest2  dispatch /bin/bash' and run 
'qdrouterd -c /etc/qpid-dispatch/private-router.conf' or just run 'docker run -t -i  -name dispatch_container  dispatch qdrouterd -c /etc/qpid-dispatch/private-router.conf'
to start the router directly.
