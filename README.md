# 懒人脚本包
这个仓库的目的就是提供一些脚本，各种一键执行的东西，现在的主体方向都是基于docker的，目的就是一个docker就包揽所有活。
目前只支持CentOS

1. 第一个脚本自然是自动安装docker：
  - 前提条件：拥有sudo执行权限
  - 国外服务器安装脚本：`export user=$USER;curl https://raw.githubusercontent.com/boydfd/inertia/master/docker/install_docker.sh | 
  sudo -E bash`
  - 国内服务器安装脚本：`export user=$USER;curl https://raw.githubusercontent.com/boydfd/inertia/master/docker/install_docker_cn.sh | 

2. 自动安装docker-composes:
  - 前提：拥有sudo执行权限
  - 代码： `curl https://raw.githubusercontent.com/boydfd/inertia/master/docker/install_docker-docmpose.sh | sudo bash`
