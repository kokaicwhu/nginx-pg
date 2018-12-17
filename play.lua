local t = {1, 3, 5, 8, 11, 18, 21}

local i
for i, v in ipairs(t) do
    if 11 == v then
        print("index[" .. i .. "] have right value[11]")
        break
    end
end

local function func( ... )                -- 形参为 ... ,表示函数采用变长参数

    local temp = {...}                     -- 访问的时候也要使用 ...
    local ans = table.concat(temp, " ")    -- 使用 table.concat 库函数对数
                                           -- 组内容使用 " " 拼接成字符串。
    print(ans)
end
 
func(1, 2)        -- 传递了两个参数
func(1, 2, 3, 4)  -- 传递了四个参数

local function change(arg) -- change 函数，改变长方形的长和宽，使其各增长一倍
    arg.width = arg.width * 2
    arg.height = arg.height * 2
end
  
local rectangle = { width = 25, height = 16 }
print("before change:", "width  =", rectangle.width,
                        "height =", rectangle.height)
change(rectangle)
print("after  change:", "width  =", rectangle.width,
                        "height =", rectangle.height)

                        