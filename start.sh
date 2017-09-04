#!/usr/bin/env bash

set -e
set -x

if [ "$1" == "no-cache" ]; then
  docker build --no-cache -t alpine:latestndpi .
else
  docker build -t alpine:latestndpi .
fi


rm ./destdir -rf

docker run -i -t -v `pwd`:/build/ alpine:latestndpi

cd destdir
tar cvfJ xt_ndpi.tar.xz ./*
tar tvf xt_ndpi.tar.xz
cd -

set +x
