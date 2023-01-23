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

# echo "修改wifi默认开启"
# wifi_disabled=0
# sed -i "s/1/$lan_ip/g" ./package/kernel/mac80211/files/lib/wifi/mac80211.sh
