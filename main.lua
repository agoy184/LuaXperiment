_G.love = require("love")

-- Load some default values for our rectangle.
function love.load()
    x, y, w, h = 20, 200, 60, 20
    --[[
    _G.love.graphics.setBackgroundColor(0.2, 0.2, 0.2) -- Set background color
    _G.love.graphics.setColor(1, 1, 1) -- Set default color
    _G.love.window.setTitle("Love2D Rectangle Example") -- Set window title
    _G.love.window.setMode(800, 600) -- Set window size
    _G.love.graphics.setFont(_G.love.graphics.newFont(20))]]
    _G.number = 0
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
    love.graphics.setColor(0.1, 0.4, 0.4)
    love.graphics.rectangle("fill", x, y, w, h)
    love.graphics.print('Hello World!', 400, 300)
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