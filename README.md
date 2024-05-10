# virt-vnc

作为梧桐平台虚拟机服务 vnc 连接的前端，基于 noVNC 和 kubevirt 实现。

## 目标

在梧桐平台中，用户可以通过浏览器直接连接到虚拟机的图形界面，实现虚拟机的图形化操作。

## 思路

1. wt-api 检测 kubevirt 资源安装后，自动安装 virt-vnc 服务；
2. 用户安装虚拟机后，可以通过 vnc 连接进入虚拟机的图形界面。

vnc 服务代理地址：<http://wt-api/console/virt-vnc/{namespace}/{vm}/vnc.html>
