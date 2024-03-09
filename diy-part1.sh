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

# Add a feed source
# echo 'src-git lienol https://github.com/Lienol/openwrt-package' >>feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld.git' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# rm -rf feeds/packages/net/smartdns
# rm -rf package/lean/luci-theme-argon

# svn co https://github.com/Lienol/openwrt-packages/trunk/net/smartdns package/smartdns

# git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
# git clone https://github.com/pymumu/luci-app-smartdns.git -b lede package/luci-app-smartdns
# git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
# git clone https://github.com/fw876/helloworld/luci-app-ssr-plus.git package/luci-app-ssr-plus
# git clone https://github.com/jerrykuku/luci-app-ttnode.git package/luci-app-ttnode
# git clone https://github.com/yeungle/luci-app-onliner.git package/luci-app-onliner
# git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
# git clone https://github.com/jerrykuku/luci-theme-argon.git -b 18.06 package/luci-theme-argon
# git clone https://github.com/fatelpc/luci-theme-edge.git package/luci-theme-edge

./scripts/feeds update -a
./scripts/feeds install -a
