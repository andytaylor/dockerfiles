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

FROM fedora:24
MAINTAINER Andy Taylor
RUN yum -y update
RUN yum -y install wget
RUN yum -y install tar
RUN yum -y install libaio
RUN yum -y install java-1.8.0-openjdk.x86_64
RUN yum -y install java-1.8.0-openjdk-devel.x86_64
ADD A-MQ7-7.0.0-SNAPSHOT-bin.tar.gz /opt/
ENV ARTEMIS_HOME /opt/A-MQ7-7.0.0-SNAPSHOT
RUN mkdir -p /etc/artemis/profiles

