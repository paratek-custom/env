FROM golang:1.16-buster

ENV LD_LIBRARY_PATH=/var/lib/HCNetSDK/lib
ENV GITHUB_TOKEN=

ADD build-docker.sh /tmp


## 
RUN cd /tmp && bash build-docker.sh && rm -rf /tmp/build-docker.sh

RUN mkdir /entrypoint/ -p
ADD entrypoint.sh /entrypoint/
ENTRYPOINT [ "/bin/bash","/entrypoint/entrypoint.sh" ]