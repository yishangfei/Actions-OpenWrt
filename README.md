# 借助 GitHub Actions 的 OpenWrt 在线自动编译.

### 固件发布:
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/yishangfei/Actions-OpenWrt?style=for-the-badge&label=固件下载)](https://github.com/yishangfei/Actions-OpenWrt/releases/latest)

#### 固件源码来源
- openwrt-[openwrt/openwrt](https://github.com/openwrt/openwrt).
```bash
git clone -b master --single-branch https://github.com/openwrt/openwrt
```

- hanwckf-[hanwckf/immortalwrt-mt798x](https://github.com/hanwckf/immortalwrt-mt798x).
```bash
git clone -b openwrt-21.02 --single-branch https://github.com/hanwckf/immortalwrt-mt798x
```

## Redmi AX6000 不死uboot
- [hanwckf大佬uboot地址](https://github.com/hanwckf/bl-mt798x/releases/latest)
- [红米ax6000刷不死uboot](https://blog.w2aa.ga/post/ax6000-uboot.html).

## Redmi AX6000 不死ubootmod
- [红米ax6000刷不死ubootmod](https://www.right.com.cn/forum/thread-8272071-1-2.html).

## .config获取
- [参考lede](https://github.com/coolsnowwolf/lede/issues).
- ls -a 查看隐藏文件 
- Windows通过 \\wsl$  获取WSL文件 

### 固件初始配置
- 默认管理IP:`192.168.1.1` 
- 用户名:`root`、
- 密码:`设置首次登录后台密码为空（进入openwrt后自行修改密码）`

### OpenClash内核配置
- 如果wget网络不好可以通过SCP协议传输
 ```bash
    cd /etc/openclash/core/ 
    wget https://github.com/vernesong/OpenClash/releases/download/Clash/clash-linux-arm64.tar.gz
    tar -zxvf clash-linux-arm64.tar.gz 
    chmod 777 clash
   ```
