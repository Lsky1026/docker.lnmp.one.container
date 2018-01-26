# docker.lnmp.one.container
### 一个容器实现lnmp+phalcon

-   docker build -t lsky-ubuntu
-   docker run -d -e "container=docker" --privileged -v         /Users/liusisheng/projects/github/docker.lnmp.one.container/data/wwwroot:/data/wwwroot -v /Users/liusisheng/projects/github/docker.lnmp.one.container/nginx.config:/usr/nginx.config -p 12080:80 -p 12443:443 -p 12022:22 --name ubuntu-test lsky-ubuntu:latest init

-   docker exec -ti ubuntu-test /bin/bash
