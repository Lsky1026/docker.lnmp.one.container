# docker.lnmp.one.container
### 一个容器实现lnmp+phalcon

-   docker build -t lsky-ubuntu ./
-   docker run -d -e "container=docker" --privileged -v         /Users/liusisheng/projects/github/docker.lnmp.one.container/data/wwwroot:/data/wwwroot -v /Users/liusisheng/projects/github/docker.lnmp.one.container/nginx.config:/usr/nginx.config -p 12080:80 -p 12443:443 -p 12022:22 -p 12880:8080 --name ubuntu-test lsky-ubuntu:latest init

-   docker exec -ti ubuntu-test /bin/bash

- cd ~/oneinstack

- ./install.sh    选择所需的lnmp环境

- 修改nginx.conf  cd /usr/local/nginx/conf/

- vim nginx.conf

- worker_rlimit_nofile: 655350

- server 端口改为8080

- 底部添加 include /usr/nginx.config/*.conf;

- 添加phalcon插件 --> https://www.cnblogs.com/Mirfuii/p/6095351.html


- cd /usr/local/php/etc/php.d

- vim ext-phalcon.ini

- extension=phalcon.so 然后保存退出

- service nginx configtest && service php-fpm restart && service nginx restart

> 浏览器访问 localhost:12080

> !注意 ： 需要把根目录下的.git删除
