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

FROM amq7
MAINTAINER Andy Taylor
RUN mkdir -p /etc/artemis/profiles
RUN $ARTEMIS_HOME/bin/artemis create --replicated --failover-on-shutdown  --user admin --password password --role admin --allow-anonymous y --clustered --host localhost --cluster-user clusterUser --cluster-password clusterPassword /etc/artemis/profiles/repBackupBroker
ADD broker.xml /etc/artemis/profiles/repBackupBroker/etc/broker.xml
ADD runbroker.sh runbroker.sh
ADD stopports.sh stopports.sh
EXPOSE 8161 61616 5445 5672 61613 5005
CMD bash
