FROM ubuntu:18.04
MAINTAINER alertflex

USER root

RUN apt-get -y update ; apt-get -y install libc6-dev build-essential libtool libdaemon-dev libboost-all-dev xz-utils libgeoip1 libgeoip-dev geoip-bin \
    libyaml-0-2 libyaml-dev m4 pkg-config libssl-dev apt-transport-https apache2-dev libapr1-dev libaprutil1-dev

RUN curl -L -O "https://github.com/alertflex/altprobe/releases/download/v1.0.2/altprobe_1.0-2.deb" ; \
    dpkg -i altprobe_1.0-2.deb ; ldconfig ; chmod go-rwx /etc/altprobe/altprobe.yaml ; \
    curl https://files-cdn.liferay.com/mirrors/geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.xz -o /etc/altprobe/GeoLiteCity.dat.xz ; \
    unxz /etc/altprobe/GeoLiteCity.dat.xz

ENTRYPOINT altprobe startd






	
