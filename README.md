# Mirai-docker

> 本项目使用 openjdk11 docker 镜像封装了 `mirai-2.14.0` 和 `mirai-api-http-2.9.1` 方便使用

## 首次使用说明

1. 首先确定安装好 docker 以及 docker-compose 并克隆该仓库

2. 运行 `prepare.sh` 下载 `mirai` 相关文件

3. `docker-compose up -d` 然后 `docker-compose down` 使程序文件结构初始化

    > 要注意的是这里密码选用md5，防止密码出现特殊字符无法登录

4. 修改 `docker-compose.yml` 文件中 `environment` 的各个参数

5. `docker-compose up -d` 运行程序

6. `docker attach mirai-docker-mirai-1` 进入控制台，按提示通过验证

## 注意

推荐先在服务器所在 IP 登录 PC 版 QQ 一个星期左右再使用 mirai 登录，并且将登录成功得到的 `device.json` 妥善保存