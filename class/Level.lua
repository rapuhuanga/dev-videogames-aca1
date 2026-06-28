Level = {}
Level.__index = Level

function Level:new(number)
    local self = setmetatable({}, Level)
    self.number = number
    self.bricks = {}
    return self
end

function Level:loadLevel()
    -- Crear ladrillos en posiciones predefinidas
    for row = 0, 4 do
        for col = 0, 9 do
            local brick = Brick:new(30 + col * 75, 50 + row * 30, 70, 20)
            table.insert(self.bricks, brick)
        end
    end
end

function Level:draw()
    for _, brick in ipairs(self.bricks) do
        brick:draw()
    end
end

function Level:isComplete()
    for _, brick in ipairs(self.bricks) do
        if brick:isAlive() then
            return false
        end
    end
    return true
end