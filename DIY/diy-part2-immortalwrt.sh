#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/172.16.0.1/g' package/base-files/files/bin/config_generate
# 修改机器名称
sed -i 's/ImmortalWrt/CM520-79F-Two/g' package/base-files/files/bin/config_generate
# 修改机器初始密码
#sed -i 's/root::0:0:99999:7:::/root::0:0:99999:7:::/g' package/base-files/files/etc/shadow
# zerotier
#sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.8.4/g' feeds/packages/net/zerotier/Makefile
#rm -rf feeds/small/v2ray-core
####### Modify the version number
sed -i '/DISTRIB_DESCRIPTION/d' package/base-files/files/etc/openwrt_release
echo "DISTRIB_DESCRIPTION='OpenWrt $('+%V')'" >> package/base-files/files/etc/openwrt_release
sed -i "s/OpenWrt /洲·Cy build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/base-files/files/etc/openwrt_release
# DNS Cache FixUP
echo -e "#max-ttl=600\nneg-ttl=600\nmin-cache-ttl=3600" >> package/network/services/dnsmasq/files/dnsmasq.conf
# 修改连接数
sed -i 's/net.netfilter.nf_conntrack_max=.*/net.netfilter.nf_conntrack_max=165535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
# 软库增减
rm -rf feeds/luci/luci-app-ddns-go
rm -rf feeds/packages/ddns-go
svn export --force https://github.com/kiddin9/openwrt-packages/trunk/luci-app-ddns-go feeds/luci/applications/luci-app-ddns-go
svn export --force https://github.com/kiddin9/openwrt-packages/trunk/ddnsgo feeds/packages/net/ddns-go
