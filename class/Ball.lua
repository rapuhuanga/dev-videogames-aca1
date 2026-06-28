Ball = {}
Ball.__index = Ball

function Ball:new(x, y, radius)
    local self = setmetatable({}, Ball)
    self.x = x
    self.y = y
    self.radius = radius
    self.dx = 0
    self.dy = 0
    self.speed = 250
    self.isLaunched = false
    return self
end

function Ball:update(dt)
    if self.isLaunched then
        self.x = self.x + self.dx * dt
        self.y = self.y + self.dy * dt
        -- Detectar colisiones con bordes
        if self.x - self.radius < 0 or self.x + self.radius > 800 then
            self.dx = -self.dx
        end
        if self.y - self.radius < 0 then
            self.dy = -self.dy
        end
    end
end

function Ball:draw()
    love.graphics.circle("fill", self.x, self.y, self.radius)
end

function Ball:launch()
    self.isLaunched = true
    self.dx = 200
    self.dy = -250
end

function Ball:reset()
    self.x = 400
    self.y = 530
    self.isLaunched = false
    self.dx = 0
    self.dy = 0
end

function Ball:collidesWith(entity)
    -- Lógica de colisión (placeholder)
    return false
end