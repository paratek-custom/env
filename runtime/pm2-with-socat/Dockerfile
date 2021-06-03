FROM debian:buster

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/node/bin

ADD install.sh /tmp/

RUN bash /tmp/install.sh && rm -rf /tmp/install.sh
