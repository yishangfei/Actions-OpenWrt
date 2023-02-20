#!/bin/bash
#
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
# 自定义 sh
echo "设置lan ip"
lan_ip='192.168.1.1' 
sed -i "s/192.168.1.1/$lan_ip/g" package/base-files/files/bin/config_generate

echo "修改时区"
utc_name='Asia\/Shanghai' 
sed -i "s/'UTC'/'CST-8'\n   set system.@system[-1].zonename='$utc_name'/g" package/base-files/files/bin/config_generate

echo "修改机器名称"
device_name='OpenWrt'
sed -i "s/OpenWrt/$device_name/g" ./package/base-files/files/bin/config_generate

echo "修改wifi名称"
wifi_name=ysf
sed -i "s/OpenWrt/$wifi_name/g" ./package/kernel/mac80211/files/lib/wifi/mac80211.sh

echo "wifi默认开启"
sed -i '/set wireless.${name}.disabled/d' ./package/kernel/mac80211/files/lib/wifi/mac80211.sh

# # Disable IPV6 ula prefix
# echo "关闭IPV6"
# sed -i 's/^[^#].*option ula/#&/' /etc/config/network

# ##-----------------Add OpenClash dev core------------------
# mkdir -p files/etc/openclash/core

# CLASH_DEV_URL="https://raw.githubusercontent.com/vernesong/OpenClash/master/core-lateset/dev/clash-linux-arm64.tar.gz"
# GEOIP_URL="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat"
# GEOSITE_URL="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat"

# wget -qO- $CLASH_DEV_URL | tar xOvz > files/etc/openclash/core/clash
# wget -qO- $GEOIP_URL > files/etc/openclash/GeoIP.dat
# wget -qO- $GEOSITE_URL > files/etc/openclash/GeoSite.dat

# chmod +x files/etc/openclash/core/clash*
# ##---------------------------------------------------------
