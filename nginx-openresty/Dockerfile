FROM openresty/openresty

# Import jwt library
#COPY lua-resty-jwt-0.1.11/lib/resty /usr/local/openresty/lualib/resty

WORKDIR /usr/local/openresty/nginx

COPY nginx.conf conf/nginx.conf

RUN opm get SkyLothar/lua-resty-jwt

RUN rm -f logs/*
