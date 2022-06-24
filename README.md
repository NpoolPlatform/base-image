# base-image

use alpine:3.16 create service base image

## 添加常用的基础开发命令

- ss
- curl
- wget
- grpcurl

## 制作镜像

- 安装 **grpcurl**

```sh
make -e all_proxy=your-proxy deps
```

- 构建镜像

```sh
make image
```

- 上传镜像(这一步需要手动操作,并且需要先登录 docker)

```sh
docker push uhub.service.ucloud.cn/entropypool/alpine:3.16
```

以上步骤可以一步操作

```sh
make all
```

然后上传镜像即可
