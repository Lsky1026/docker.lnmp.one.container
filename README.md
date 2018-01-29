# docker.lnmp.one.container
### 一个容器实现lnmp+phalcon+xdebug

-   docker build -t lsky-ubuntu ./
-   docker run -d -e "container=docker" --privileged -v         /Users/liusisheng/projects/github/docker.lnmp.one.container/data/wwwroot:/data/wwwroot -v /Users/liusisheng/projects/github/docker.lnmp.one.container/nginx.config:/usr/nginx.config -p 12080:80 -p 12443:443 -p 12022:22 -p 12880:8080 -p 12900:9000 --name ubuntu-test lsky-ubuntu:latest init

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

- cd ~/xdebug

- make clean

- /usr/local/php/bin/phpize --clean

- /usr/local/php/bin/phpize

- ./configure --with-php-config=/usr/local/php/bin/php-config

- make && make install

- cd /usr/local/php/etc/php.d && vim ext-xdebug.ini

- 输入 zend_extension=xdebug.so
    xdebug.remote_enable = on
    xdebug.remote_handler=dbgp
    ;xdebug.remote_host=16319y873r.iok.la
    ;xdebug.remote_port=33574
    xdebug.remote_host=127.0.0.1
    xdebug.remote_port=9000
    xdebug.output_buffering=off
    xdebug.profiler_enable = off
    xdebug.profiler_enable_trigger = off
    xdebug.profiler_output_name = cachegrind.out.%t.%p
    xdebug.profiler_output_dir = "/data/temp"
    xdebug.show_local_vars=0
    xdebug.remote_autostart=1
    xdebug.idekey="7766LIN$"

- service nginx configtest && service php-fpm restart && service nginx restart

> 浏览器访问 localhost:12080

> !注意 ： 需要把根目录下的.git删除

> !注意：如果上面👆步骤全部执行完 nginx500报错  可能是因为 `open.51bzg.com` 中 `.env`文件没有
