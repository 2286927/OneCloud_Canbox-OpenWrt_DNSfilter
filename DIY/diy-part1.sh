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
git clone https://github.com/kenzok8/openwrt-packages.git package/kenzo
git clone https://github.com/kenzok8/small.git package/small
# sed -i '$a src-git dnsfilter https://github.com/kiddin9/luci-app-dnsfilter' feeds.conf.default
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#git clone https://github.com/kiddin9/openwrt-packages package/kiddin9
# git clone https://github.com/kenzok8/small-package package/small-package
#git clone https://github.com/bootli/luci-app-turboacc.git package/small-package/luci-app-turboacc
#git clone https://github.com/deplives/luci-app-turboacc.git package/small-package/luci-app-turboacc
#git clone https://github.com/imapproxy/luci-app-turboacc.git package/small-package/luci-app-turboacc
## Turbo ACC
svn export --force https://github.com/kiddin9/openwrt-packages/trunk/luci-app-turboacc package/small-package/luci-app-turboacc
svn export --force https://github.com/kiddin9/openwrt-packages/trunk/shortcut-fe package/small-package/luci-app-turboacc/shortcut-fe
#
svn export --force https://github.com/kiddin9/openwrt-packages/trunk/luci-app-rclone package/small-package/luci-app-rclone
git clone https://github.com/bootli/luci-app-ddns-go.git package/ddns-go
# svn export --force https://github.com/kiddin9/openwrt-packages/trunk/ddns-scripts-dnspod package/small-package/luci-app-ddns
# svn export --force https://github.com/kiddin9/openwrt-packages/trunk/luci-app-ddns package/small-package/luci-app-ddns
#git clone https://github.com/lisaac/luci-app-dockerman.git package/dockerman
#  git clone https://github.com/kenzok8/small-package package/small-package
#  git clone --depth=1 -b luci https://github.com/bootli/luci-app-turboacc.git package/luci-app-turboacc

#Add The Theme：luci-theme-opentomcat
#git clone https://github.com/Cosme927/luci-theme-opentomcat package/luci-theme-opentomcat
