Brick = {}
Brick.__index = Brick

function Brick:new(x, y, width, height)
    local self = setmetatable({}, Brick)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.hp = 1
    self.destroyed = false
    return self
end

function Brick:draw()
    if not self.destroyed then
        love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
    end
end

function Brick:takeDamage()
    self.hp = self.hp - 1
    if self.hp <= 0 then
        self.destroyed = true
    end
end

function Brick:isAlive()
    return not self.destroyed
end