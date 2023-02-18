# cd $WORK_PATH 目录下,先运行的 public.h -> 设备.h -> scripts/feeds install -a
# 必须的文件
sed -i '$a src-git openwrt_kiddin9 https://github.com/kiddin9/openwrt-packages' feeds.conf.default
