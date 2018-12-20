local _M = {}

local cjson = require("cjson")
local jwt = require("resty.jwt")

function _M.sign_token(key, target)
    local jwt_token = jwt:sign(
        key,
        {
            header={typ="JWT", alg="HS256"},
            payload=target
        }
    )
    return jwt_token
end

function _M.verify_token(key, target)
    local jwt_obj = jwt:verify(key, target)
    return cjson.encode(jwt_obj)
end

return _M
