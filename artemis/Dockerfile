##
## Licensed to the Apache Software Foundation (ASF) under one
## or more contributor license agreements.  See the NOTICE file
## distributed with this work for additional information
## regarding copyright ownership.  The ASF licenses this file
## to you under the Apache License, Version 2.0 (the
## "License"); you may not use this file except in compliance
## with the License.  You may obtain a copy of the License at
##
##   http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing,
## software distributed under the License is distributed on an
## "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
## KIND, either express or implied.  See the License for the
## specific language governing permissions and limitations
## under the License.
##

FROM fedora:21
MAINTAINER Andy Taylor
RUN yum -y update
RUN yum -y install wget
RUN yum -y install tar
RUN yum -y install libaio
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.tar.gz"
RUN tar xvf jdk-8u25-linux-x64.tar.gz
RUN rm jdk-8u25-linux-x64.tar.gz
RUN mv jdk1.8.0_25 /opt/
RUN alternatives --install /usr/bin/java java /opt/jdk1.8.0_25/bin/java 1
RUN alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_25/bin/javac 1
RUN alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_25/bin/jar 1
ADD apache-artemis-1.0.1-SNAPSHOT-bin.tar.gz /opt/
ENV ARTEMIS_HOME /opt/apache-artemis-1.0.1-SNAPSHOT
RUN mkdir -p /etc/artemis/profiles
RUN $ARTEMIS_HOME/bin/artemis create /etc/artemis/profiles/basic --user admin --password password --allow-anonymous
EXPOSE 8161 61616 5445 5672 61613
CMD bash
