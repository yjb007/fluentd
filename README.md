### 使用Docker快速搭建
*********

1. 配置docker swarm环境

> 参考: https://www.cnblogs.com/yjb007/p/9669908.html

2. 修改linux host centos 7.4的默认ssh端口为1234

``` shell
sed -i 's$#Port 22$Port 1234$g' /etc/ssh/sshd_config
systemctl restart sshd
```

3. 安装Gitlab

``` shell
yum update -y nss curl libcurl
mkdir -p /soft/
cd /soft/
git clone https://github.com/yjb007/gitlab.git
cd gitlab
sh build.sh
mkdir -p /srv/volume/git/{data,logs,config}
sh service.sh

```

4.访问Gitlab: http://git.local.com

``` shell
cat /etc/hosts
10.1.1.238 git.local.com
#需要在hosts文件中绑定域名IP地址

```

5.修改访问Gitlab使用的域名,必须要在下面的位置进行设置

``` shell
vim service.sh
--hostname git.local.com \

```

> Gitlab CE版本目前的tag列表：https://hub.docker.com/r/gitlab/gitlab-ce/tags/
