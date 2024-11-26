#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Modify default IP
# sed -i 's/192.168.1.1/8.1.1.1/g' package/base-files/files/bin/config_generate
# 修改机器名称
# sed -i 's/OpenWrt/CM520-79F-Two/g' package/base-files/files/bin/config_generate
# 修改机器初始密码
# sed -i 's/root::0:0:99999:7:::/root::0:0:99999:7:::/g' package/base-files/files/etc/shadow

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
#sed -i '$a src-git dockerman https://github.com/lisaac/luci-app-dockerman' feeds.conf.default
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
#git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
#git clone https://github.com/kenzok8/small.git package/small
# sed -i '$a src-git dnsfilter https://github.com/kiddin9/luci-app-dnsfilter' feeds.conf.default
# sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
git clone https://github.com/kenzok8/small.git package/small
#rm -rf package/openwrt-packages/luci-app-adguardhome
rm -rf package/openwrt-packages/adguardhome
rm -rf package/openwrt-packages/luci-app-ddns-go
rm -rf package/openwrt-packages/ddns-go
rm -rf package/small/xray-core
rm -rf package/small/sing-box
rm -rf package/small/mosdns
#git clone https://github.com/kenzok8/small-package feeds/small-package
#git clone https://github.com/kiddin9/openwrt-packages package/kiddin9
#git clone https://github.com/bootli/luci-app-turboacc.git package/small-package/luci-app-turboacc
#git clone https://github.com/deplives/luci-app-turboacc.git package/small-package/luci-app-turboacc
#git clone https://github.com/imapproxy/luci-app-turboacc.git package/small-package/luci-app-turboacc
## Turbo ACC
# svn export --force https://github.com/kiddin9/openwrt-packages/trunk/luci-app-turboacc package/small-package/luci-app-turboacc
# svn export --force https://github.com/kiddin9/openwrt-packages/trunk/shortcut-fe package/small-package/luci-app-turboacc/shortcut-fe
#
####################################
### Turbo ACC-[openwrt(22.03/23.05)]
####################################
#mkdir -p turboacc_tmp ./package/turboacc
#cd turboacc_tmp 
#git clone https://github.com/chenmozhijin/turboacc -b package
#cd ../package/turboacc
#git clone https://github.com/fullcone-nat-nftables/nft-fullcone
#git clone https://github.com/chenmozhijin/turboacc
#mv ./turboacc/luci-app-turboacc ./luci-app-turboacc
#rm -rf ./turboacc
#cd ../..
#cp turboacc_tmp/turboacc/hack-5.15/952-add-net-conntrack-events-support-multiple-registrant.patch ./target/linux/generic/hack-5.15
#cp turboacc_tmp/turboacc/hack-5.15/953-net-patch-linux-kernel-to-support-shortcut-fe.patch ./target/linux/generic/hack-5.15
#rm -rf ./package/libs/libnftnl ./package/network/config/firewall4 ./package/network/utils/nftables
#mkdir -p ./package/network/config/firewall4 ./package/libs/libnftnl ./package/network/utils/nftables
#cp -r ./turboacc_tmp/turboacc/shortcut-fe ./package/turboacc
#cp -RT ./turboacc_tmp/turboacc/firewall4-04a06bd70b9808b14444cae81a2faba4708ee231/firewall4 ./package/network/config/firewall4
#cp -RT ./turboacc_tmp/turboacc/libnftnl-1.2.5/libnftnl ./package/libs/libnftnl
#cp -RT ./turboacc_tmp/turboacc/nftables-1.0.7/nftables ./package/network/utils/nftables
#rm -rf turboacc_tmp
####################################
### Turbo ACC of End
####################################
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-rclone package/small-package/luci-app-rclone
# git clone https://github.com/bootli/luci-app-ddns-go.git package/ddns-go
#git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go
#svn export --force https://github.com/kiddin9/openwrt-packages/trunk/ddns-scripts-dnspod package/small-package/luci-app-ddns
#svn export --force https://github.com/kiddin9/openwrt-packages/trunk/luci-app-ddns package/small-package/luci-app-ddns
#  git clone https://github.com/lisaac/luci-app-dockerman.git package/dockerman
#git clone -b master --single-branch https://github.com/kiddin9/openwrt-packages/luci-app-turboacc package/small-package/luci-app-turboacc

#Add The Theme：luci-theme-opentomcat
#git clone https://github.com/Cosme927/luci-theme-opentomcat package/luci-theme-opentomcat

#
####################################
# firewall3/4 的luci-app-socat
####################################
#
rm -rf feeds/luci/luci-app-socat
svn export --force https://github.com/chenmozhijin/luci-app-socat/trunk/luci-app-socat feeds/luci/applications/luci-app-socat
#
####################################
# firewall3/4 的luci-app-socat of End
####################################
rm -rf feeds/packages/net/adguardhome
