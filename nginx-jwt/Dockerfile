FROM openresty/openresty

WORKDIR /usr/local/openresty/nginx

COPY nginx.conf conf/nginx.conf

RUN opm get SkyLothar/lua-resty-jwt

RUN rm -f logs/*
