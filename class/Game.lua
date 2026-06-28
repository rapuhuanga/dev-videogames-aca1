Game = {}
Game.__index = Game

function Game:new()
    local self = setmetatable({}, Game)
    self.estado = "TITLE"     -- Estados: TITLE, PLAY, PAUSE, GAMEOVER
    self.vidas = 3
    self.puntuacion = 0
    self.paleta = nil
    self.pelota = nil
    self.nivelActual = nil
    self.ui = nil
    return self
end

function Game:initialize()
    -- Aquí se crearán las instancias de las clases
    self.paleta = Paddle:new(350, 550, 100, 20)
    self.pelota = Ball:new(400, 530, 10)
    self.nivelActual = Level:new(1)
    self.ui = UI:new()
    self.nivelActual:loadLevel()
end

function Game:update(dt)
    -- Lógica del juego según el estado
end

function Game:draw()
    -- Dibujar según el estado
end

function Game:keypressed(key)
    -- Manejar entrada del teclado
end

function Game:changeState(newState)
    self.estado = newState
end

function Game:loseLife()
    self.vidas = self.vidas - 1
    if self.vidas <= 0 then
        self:changeState("GAMEOVER")
    else
        self.pelota:reset()
        self.paleta:reset()
    end
end