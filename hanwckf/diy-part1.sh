#!/bin/bash
#
# Add a feed source
sed -i '$a src-git kiddin9 https://github.com/kiddin9/openwrt-packages' feeds.conf.default
