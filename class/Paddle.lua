Paddle = {}
Paddle.__index = Paddle

function Paddle:new(x, y, width, height)
    local self = setmetatable({}, Paddle)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.speed = 400
    return self
end

function Paddle:update(dt)
    -- Movimiento con teclas
end

function Paddle:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Paddle:reset()
    self.x = 350
end

function Paddle:moveLeft(dt)
    self.x = self.x - self.speed * dt
    if self.x < 0 then self.x = 0 end
end

function Paddle:moveRight(dt)
    self.x = self.x + self.speed * dt
    if self.x + self.width > 800 then self.x = 800 - self.width end
end