_G.love = require("love")

-- Load some default values for our rectangle.
function love.load()
    x, y, w, h = 20, 200, 60, 20
    _G.number = 0
    love.graphics.setBackgroundColor(0.3, 0, 0.1)
end

-- Increase the size of the rectangle every frame.
function love.update(dt)
    w = w + 1
    h = h + 0.1
    number = number + 1
end

-- Draw a coloured rectangle.
function love.draw()
    -- In versions prior to 11.0, color component values are (0, 102, 102)
    love.graphics.setColor(0, 0, 1)
    love.graphics.rectangle("line", x, y, w, h)
    love.graphics.setFont(love.graphics.newFont(20))
    love.graphics.circle("line", 450, 330, 90)

    quartcircle = math.pi / 2 -- Define 1/4 angle constant

    love.graphics.arc("fill", "open", 483, 330, 90, 15, math.pi / 3)    
    -- Angles are clockwise, as y value grows when going down 
    love.graphics.setColor(1, 1, 0)    
    love.graphics.arc( "line", "open", 400, 330, 100, quartcircle, math.pi+quartcircle )
    love.graphics.arc( "line", "open", 600, 330, 100, -quartcircle, quartcircle)

    love.graphics.setColor(0, 1, 1)    
    love.graphics.print('Welcome to LUA!', 400, 300)
    love.graphics.print('Number: ' .. number, 10, 10)
    love.graphics.print('Rectangle Size: ' .. w .. 'x' .. h, 10, 30)
    love.graphics.print('Rectangle Position: (' .. x .. ', ' .. y .. ')', 10, 50)
    love.graphics.print('Rectangle Area: ' .. (w * h), 10, 70)
    love.graphics.print('Rectangle Perimeter: ' .. (2 * (w + h)), 10, 90)
    love.graphics.print('Rectangle Aspect Ratio: ' .. (w / h), 10, 110)
    love.graphics.print('Rectangle Width: ' .. w, 10, 130)
    love.graphics.print('Rectangle Height: ' .. h, 10, 150)
    love.graphics.print('Rectangle Center: (' .. (x + w / 2) .. ', ' .. (y + h / 2) .. ')', 10, 170)
end