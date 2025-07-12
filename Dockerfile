# 使用 openlistteam/openlist:latest-lite-aio 镜像作为基础镜像
FROM openlistteam/openlist:latest-lite-aio

# 定义镜像的维护者信息
LABEL MAINTAINER="OpenList"

# 设置工作目录
WORKDIR /opt/openlist/

# 创建数据卷
VOLUME ["/opt/openlist/data/"]

# 设置环境变量
ENV PUID=0 \
    PGID=0 \
    UMASK=022 \
    RUN_ARIA2=true

# 暴露端口
EXPOSE 5244 5245

# 设置容器的启动命令
CMD ["/entrypoint.sh"]
