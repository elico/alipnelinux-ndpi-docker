FROM alpine:latest

RUN apk update && apk upgrade && apk add build-base linux-hardened-dev linux-hardened && \
	apk add	fakeroot sudo libcap pax-utils libressl2.5-libtls libressl libattr attr tar patch \
		lzip ca-certificates libssh2 libcurl curl abuild expat pcre git lzo squashfs-tools libburn \
		libedit libacl libisofs libisoburn xorriso acct mtools m4 perl autoconf automake coreutils \
		libmnl libnftnl-libs iptables iptables-dev libnfnetlink libnetfilter_conntrack libnfnetlink-dev \
		libnetfilter_conntrack-dev libpcap libpcap-dev libltdl libtool ncurses-dev lua5.2-libs vim \
		xtables-addons-hardened 
# alpine-sdk
RUN mkdir /build
VOLUME /build
CMD ["/build/build.sh"]
