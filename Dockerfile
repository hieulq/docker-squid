FROM debian:stretch
MAINTAINER Hieu LE <sudo@rm-rf.cloud>

ENV DEBIAN_FRONTEND=noninteractive

COPY deb/*.deb /tmp/
RUN apt update -qq && \
    apt install -qq -y \
      gdebi-core

RUN gdebi -n /tmp/squid-common_3.5.23-5+deb9u1_all.deb && \
    gdebi -n /tmp/squid_3.5.23-5+deb9u1_amd64.deb && \
    rm -f /tmp/*.deb

EXPOSE 3128

ENTRYPOINT [ "/usr/sbin/squid" ]

CMD [ "-N" ]

