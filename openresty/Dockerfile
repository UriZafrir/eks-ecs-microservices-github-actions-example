#https://github.com/openresty/docker-openresty
#https://github.com/openresty/lua-resty-mysql

FROM --platform=linux/amd64 openresty/openresty:bionic

#install lua-resty-mysql
RUN apt update \
&& apt install git -y \
&& /usr/local/openresty/luajit/bin/luarocks install lua-resty-mysql

# copy app to container
COPY ./html /usr/local/openresty/nginx/html

# Copy NGINX configuration file
COPY ./nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
#RUN cat /usr/local/openresty/nginx/conf/nginx.conf

# Create a directory to store SSL certificates
RUN mkdir -p /etc/openresty/nginx/ssl

# Copy SSL certificates from the host to the container
COPY ./ssl-certificates /etc/openresty/nginx/ssl/

RUN nginx -t

EXPOSE 80 443
