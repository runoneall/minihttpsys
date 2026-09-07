# minihttpsys

制作最小最好的 HTTP 服务器镜像

## nginx

系统配置存放在 [nginx.conf](./overlay/etc/nginx/nginx.conf)

在 `/data` 下创建 `nginx` 目录，然后创建 `/data/nginx/server.conf` 配置文件，作为用户配置

## php-fpm

系统配置存放在 [php-fpm.conf](./overlay/etc/php-fpm.conf)

在 `/data` 下创建 `php-fpm` 目录，然后创建 `/data/php-fpm/www.conf` 配置文件，作为用户配置

## python

在任意可写目录下使用 `venv`

## golang

交叉编译至 `riscv64` `musl`
