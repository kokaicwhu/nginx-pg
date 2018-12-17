# Dockerfile of nginx server with Lua and JWT support 

## Examples

1. Sign token:
    ```lua
    local cjson = require("cjson")
    local jwt = require("resty.jwt")

    local jwt_token = jwt:sign(
        "trz_secret_key",
        {
            header={typ="JWT", alg="HS256"},
            payload={provider="trz", expiration=12345678}
        }
    )
    ngx.say(jwt_token)
    ```

1. Verify token:
    ```lua
    local cjson = require("cjson")
    local jwt = require("resty.jwt")

    local jwt_token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9" ..
        ".eyJwcm92aWRlciI6InRyeiIsImV4cGlyYXRpb24iOjEyMzQ1Njc4fQ" ..
        ".V2wXePFoEAClu1L0kOiuibeUif81g4QMgYlhxp9kWzw"

    local jwt_obj = jwt:verify("trz_secret_key", jwt_token)
    ngx.say(cjson.encode(jwt_obj))
    ```
