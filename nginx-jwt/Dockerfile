FROM openresty/openresty

WORKDIR /usr/local/openresty

COPY modules lualib/modules

COPY nginx.conf nginx/conf/nginx.conf 

RUN opm get SkyLothar/lua-resty-jwt

RUN rm -f nginx/logs/*
