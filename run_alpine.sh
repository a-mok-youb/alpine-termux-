#!/bin/bash

export PATH=/bin:/sbin:/usr/bin:/usr/sbin:$PATH
export TMPDIR=/tmp
unset LD_PRELOAD

echo "nameserver 8.8.8.8" > ~/alpine/etc/resolv.conf
echo "nameserver 8.8.4.4" >> ~/alpine/etc/resolv.conf

HOME=/root proot -0 \
  -r ./ \
  -b /dev \
  -b /proc \
  -b /sys \
  -b /system \
  -b /data \
  -b /sdcard \
  -b /storage \
  -w /root \
  /bin/bash --login