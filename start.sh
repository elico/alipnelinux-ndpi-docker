#!/usr/bin/env bash

docker build -t alpine:edgendpi .

rm ./destdir -rf

docker run -i -t -v `pwd`:/build/ alpine:edgendpi

cd destdir
tar cvfJ xt_ndpi.tar.xz ./*
tar tvf xt_ndpi.tar.xz
cd -
