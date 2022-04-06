#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# 修改机器名称
sed -i 's/OpenWrt/CM520-79F/g' package/base-files/files/bin/config_generate
# 修改机器初始密码
sed -i 's/root:.*:0:0:99999:7:::/root::0:0:99999:7:::/g' package/base-files/files/etc/shadow
# zerotier
sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.8.4/g' /openwrt/feeds/packages/net/zerotier/Makefile
