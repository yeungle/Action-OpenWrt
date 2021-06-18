#!/bin/bash
#

# Add a feed source
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

rm -rf feeds/packages/net/smartdns
rm -rf package/lean/luci-theme-argon

svn co https://github.com/Lienol/openwrt-packages/trunk/net/smartdns package/smartdns

git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
git clone https://github.com/pymumu/luci-app-smartdns.git -b lede package/luci-app-smartdns
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/jerrykuku/luci-app-ttnode.git package/luci-app-ttnode
git clone https://github.com/yeungle/luci-app-autotimeset.git package/luci-app-autotimeset
git clone https://github.com/yeungle/luci-app-onliner.git package/luci-app-onliner
git clone https://github.com/jerrykuku/luci-theme-argon.git -b 18.06 package/luci-theme-argon
git clone https://github.com/fatelpc/luci-theme-edge.git package/luci-theme-edge

./scripts/feeds update -a
./scripts/feeds install -a
