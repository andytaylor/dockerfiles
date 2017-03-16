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
FROM fedora:25
MAINTAINER Andy Taylor
RUN yum -y update
RUN yum -y install wget
RUN yum -y install tar
RUN yum -y install libaio
RUN yum -y install java-1.8.0-openjdk.x86_64
RUN yum -y install java-1.8.0-openjdk-devel.x86_64
RUN yum -y install gcc cmake libuuid-devel
RUN yum -y install openssl-devel
RUN yum -y install cyrus-sasl-devel
RUN yum -y install swig          # Required for all bindings
RUN yum -y install python-devel
RUN yum -y install ruby-devel rubygem-rspec rubygem-simplecov
RUN yum -y install php-devel
RUN yum -y install perl-devel
RUN yum -y install git
RUN wget http://download-node-02.eng.bos.redhat.com/devel/candidates/amq/AMQ-BROKER-7.0.0.ER16/A-MQ7-7.0.0.ER16-redhat-1-bin.zip
RUN yum -y install unzip
RUN git clone git://ooo.englab.brq.redhat.com/~qacommon/pub/git/dtests.git
RUN unzip A-MQ7-7.0.0.ER16-redhat-1-bin.zip -d /opt
ENV ARTEMIS_HOME /opt/A-MQ7-7.0.0.ER16-redhat-1
RUN mkdir -p /etc/artemis/profiles
