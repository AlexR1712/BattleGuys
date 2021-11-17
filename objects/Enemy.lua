Object = require 'lib/classic/classic'

-- in objects/Enemy.lua
local Enemy = Object:extend()

function Enemy:new(health, armor, damage, speed, posX, posY)
    self.health = health or 100
    self.armor = armor or 100
    self.damage = damage or 10
    self.speed = speed or 100
    self.x = posX or 0
    self.y = posY or 0
end

function Enemy:update(dt)

end

function Enemy:draw()

end


return Enemy