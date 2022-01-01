# langlang
 大灰狼编译库
- 开始 ctrl+c 
- 进ssh选择插件 
``` bash
cd openwrt && make menuconfig
```
- 结束ctrl+d

## 自动更新固件
首先需要打开 Openwrt 主页,点击系统-TTYD 终端或命令窗,或者使用putty按需输入下方指令:

检查更新(保留配置): bash /bin/AutoUpdate.sh

检查更新(不保留配置): bash /bin/AutoUpdate.sh -n

更换其他作者固件(不保留配置): bash /bin/AutoUpdate.sh -g

测试模式,观看运行步骤(不安装固件): bash /bin/AutoUpdate.sh -t

查看详细信息和命令使用方法：bash /bin/AutoUpdate.sh -h
