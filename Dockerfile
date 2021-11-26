#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.

FROM quay.io/fedora/fedora:35-x86_64
MAINTAINER Jiri Stransky <jistr@jistr.com>

RUN yum -y update --refresh; yum clean all

COPY build.sh /root/build.sh
RUN /root/build.sh

COPY files /

VOLUME ["/home/syncthing/.config/syncthing", "/home/syncthing/sync"]
EXPOSE 8384
EXPOSE 21027/udp
EXPOSE 22000

CMD ["/usr/local/bin/container_syncthing"]
