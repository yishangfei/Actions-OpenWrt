# cd $WORK_PATH 目录下,先运行的 public.h -> 设备.h -> scripts/feeds install -a
# 必须的文件
sed -i '$a src/gz openwrt_kiddin9 https://op.supes.top/packages/aarch64_cortex-a53' feeds.conf.default
