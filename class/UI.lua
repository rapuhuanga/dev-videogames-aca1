UI = {}
UI.__index = UI

function UI:new()
    local self = setmetatable({}, UI)
    self.font = love.graphics.newFont(20)
    return self
end

function UI:drawScore(score)
    love.graphics.setFont(self.font)
    love.graphics.print("Puntuación: " .. score, 10, 10)
end

function UI:drawLives(lives)
    love.graphics.print("Vidas: " .. lives, 10, 40)
end

function UI:drawMenu()
    love.graphics.setFont(self.font)
    love.graphics.printf("BREAKOUT CUN", 0, 200, 800, "center")
    love.graphics.printf("Presiona ENTER para jugar", 0, 300, 800, "center")
end

function UI:drawPause()
    love.graphics.printf("PAUSA", 0, 250, 800, "center")
end

function UI:drawGameOver(score)
    love.graphics.printf("GAME OVER", 0, 200, 800, "center")
    love.graphics.printf("Puntuación: " .. score, 0, 300, 800, "center")
    love.graphics.printf("Presiona R para reiniciar", 0, 350, 800, "center")
end