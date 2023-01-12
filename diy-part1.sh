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
#sed -i 's/192.168.1.1/8.1.1.1/g' package/base-files/files/bin/config_generate
# 修改机器名称
#sed -i 's/OpenWrt/CM520-79F-Two/g' package/base-files/files/bin/config_generate
# 修改机器初始密码
#sed -i 's/root:$2y$10$S/DXBeqbZm17Be9fYRxclOAU99JXgLx.ijUv2XEVgxDiUTY6K.F8m:0:0:99999:7:::/root:x:0:0:99999:7:::/g' package/base-files/files/etc/shadow
#sed -i 's/root:$2y$10$S/DXBeqbZm17Be9fYRxclOAU99JXgLx.ijUv2XEVgxDiUTY6K.F8m:0:0:99999:7:::/root:x:0:0:99999:7:::/g' package/base-files/files/etc/passwd

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
#sed -i '$a src-git dockerman https://github.com/lisaac/luci-app-dockerman' feeds.conf.default
#sed -i '$a src-git kiddin9 https://github.com/kiddin9/openwrt-packages.git;openwrt-19.07' feeds.conf.default
#sed -i '$a src-git kiddin9 https://github.com/kiddin9/openwrt-packages' feeds.conf.default
#git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
#git clone https://github.com/kenzok8/small.git package/small
#git clone https://github.com/kiddin9/openwrt-packages package/kiddin9
git clone https://github.com/kenzok8/small-package package/small-package
#git clone https://github.com/bootli/luci-app-turboacc.git package/small-package/luci-app-turboacc
#git clone https://github.com/imapproxy/luci-app-turboacc.git package/small-package/luci-app-turboacc
svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-turboacc package/small-package/luci-app-turboacc
git clone https://github.com/bootli/luci-app-ddns-go.git package/ddns-go
##  sed -i '$a src-git dnsfilter https://github.com/kiddin9/luci-app-dnsfilter' feeds.conf.default
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
##  git clone https://github.com/kenzok8/small-package package/small-package
##  git clone https://github.com/bootli/luci-app-turboacc.git package/small-package/luci-app-turboacc
#sed -i '$a src-git kiddin9 https://github.com/kiddin9/openwrt-packages' feeds.conf.default
#Add The Theme：luci-theme-opentomcat
#git clone https://github.com/Cosme927/luci-theme-opentomcat package/luci-theme-opentomcat
# zerotier
#sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.8.4/g' /openwrt/feeds/packages/net/zerotier/Makefile
#sed -i 's/PKG_HASH:=.*/PKG_HASH:=2866a4ef9193cca0a9f0fe528a0dea00c13cb0fd714bf388a0300cb6f3639b3b/g' feeds/packages/net/zerotier/Makefile
#rm -rf feeds/packages/net/zerotier
#cp -rf $GITHUB_WORKSPACE/general/zerotier feeds/packages/net
