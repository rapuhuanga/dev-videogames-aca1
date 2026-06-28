-- Cargar todas las clases
require("class.Game")
require("class.Paddle")
require("class.Ball")
require("class.Brick")
require("class.Level")
require("class.UI")

-- Variable global para el juego
juego = nil

-- Función que se ejecuta al iniciar el juego
function love.load()
    juego = Game:new()
    juego:initialize()
end

-- Función que se ejecuta cada fotograma para actualizar
function love.update(dt)
    if juego then
        juego:update(dt)
    end
end

-- Función que se ejecuta cada fotograma para dibujar
function love.draw()
    if juego then
        juego:draw()
    end
end

-- Función que maneja las teclas presionadas
function love.keypressed(key)
    if juego then
        juego:keypressed(key)
    end
end