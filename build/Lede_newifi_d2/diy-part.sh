#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# DIY扩展二合一了，在此处可以增加插件
#

sed -i "/uci commit fstab/a\uci commit network" $ZZZ
sed -i "/uci commit network/i\uci set network.lan.ipaddr='192.168.2.1'" $ZZZ                       # IPv4 地址(openwrt后台地址)
sed -i "/uci commit network/i\uci set network.lan.netmask='255.255.255.0'" $ZZZ                    # IPv4 子网掩码
sed -i "/uci commit network/i\uci set network.lan.gateway='192.168.2.1'" $ZZZ                      # IPv4 网关
sed -i "/uci commit network/i\uci set network.lan.broadcast='192.168.2.255'" $ZZZ                  # IPv4 广播
sed -i "/uci commit network/i\uci set network.lan.dns='192.168.2.1'" $ZZZ                          # DNS(多个DNS要用空格分开)
sed -i "/uci commit network/i\uci set network.lan.delegate='0'" $ZZZ                               # 去掉LAN口使用内置的 IPv6 管理
echo "close_dhcp" > package/base-files/files/etc/closedhcp                                         # 关闭DHCP服务

sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile            # 选择argon为默认主题

sed -i "s/OpenWrt /大灰狼 Compiled in $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" $ZZZ           # 增加个性名字大灰狼

sed -i "/uci commit system/i\uci set system.@system[0].hostname='DHL-OpenWrt'" $ZZZ             # 修改主机名称为x86-64-OpenWrt

#sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.:0/$1$PhflQnJ1$yamWfH5Mphs4hXV7UXWQ21:18725/g' $ZZZ   # 替换密码（要替换密码就不能设置密码为空）

sed -i '/CYXluq4wUazHjmCDBCqXF/d' $ZZZ                                                             # 设置密码为空

#sed -i 's/PATCHVER:=5.4/PATCHVER:=4.19/g' target/linux/x86/Makefile                               # 修改内核版本为4.19


# 修改插件名字
sed -i 's/"电驴下载"/"电驴下载"/g' `grep "电驴下载" -rl ./`
sed -i 's/"存储"/"存储"/g' `grep "存储" -rl ./`
sed -i 's/"网络加速"/"网络加速"/g' `grep "网络加速" -rl ./`
sed -i 's/"流量"/"流量"/g' `grep "流量" -rl ./`
sed -i 's/"KMS激活"/"KMS激活"/g' `grep "KMS激活" -rl ./`
sed -i 's/"命令窗"/"命令窗"/g' `grep "命令窗" -rl ./`
sed -i 's/"打印服务"/"打印服务"/g' `grep "打印服务" -rl ./`
sed -i 's/"Web"/"Web"/g' `grep "Web" -rl ./`
sed -i 's/"改密码"/"改密码"/g' `grep "改密码" -rl ./`
sed -i 's/"监控"/"监控"/g' `grep "监控" -rl ./`
sed -i 's/"Argon设置"/"Argon设置"/g' `grep "Argon设置" -rl ./`
