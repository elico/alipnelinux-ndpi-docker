FROM alpine:latest

RUN apk update && apk upgrade && apk add build-base \
	ncurses-dev \
	coreutils \
	vim \
	iptables-dev iptables xtables-addons xtables-addons-grsec \
	libnetfilter_conntrack-dev \
	autoconf \
	automake \
	libtool \
	libpcap-dev \ 
	linux-virtgrsec-dev \ 
	alpine-sdk \ 
	linux-grsec-dev

RUN mkdir /build
VOLUME /build
CMD ["/build/build.sh"]
