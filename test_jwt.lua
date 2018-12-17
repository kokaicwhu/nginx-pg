local cjson = require("cjson")
local hmac = require("resty.hmac")
local jwt = require("resty.jwt")

local jwt_token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9" ..
    ".eyJmb28iOiJiYXIifQ" ..
    ".VAoRL1IU0nOguxURF2ZcKR0SGKE1gCbqwyh8u2MLAyY"

local jwt_obj = jwt:verify("lua-resty-jwt", jwt_token)
print(cjson.encode(jwt_obj))

