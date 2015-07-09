to create the Artemis image follow these instructions

1. check out Artemis from https://github.com/apache/activemq-artemis and build the distro as per the instructions
2. copy apache-artemis-1.0.1-SNAPSHOT-bin.tar.gz to this directory (dockerfiles/artemis-with-dispatch)
3. cd into the dockerfiles/artemis-with-dispatch directory and run 'docker build -t artemis .'
4. then you can start an artemis container by running 'docker run -t -i  -name broker artemis-dispatch  /etc/artemis/profiles/basic/bin/artemis run'

