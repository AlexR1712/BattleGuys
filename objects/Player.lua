Class = require 'lib/classic/classic'

-- in objects/Player.lua
PlayerClass = Class:extend()

function PlayerClass:new(id, images, health, armor, damage, speed, posX, posY)
    self.id = id
    self.health = health or 100
    self.armor = armor or 100
    self.damage = damage or 10
    self.speed = speed or 100
    self.x = posX or 0
    self.y = posY or 0
    self.state = "idle"
    self.images = images or nil

end


function PlayerClass:setImages(images)
    self.images = images
    return self
end


function PlayerClass:getImages()
    return self.images
end


function PlayerClass:getPosX()
    return self.x
end

function PlayerClass:getPosY()
    return self.y
end

function PlayerClass:setPosX(value)
    self.x = value
    return self
end

function PlayerClass:setPosY(value)
    self.y = value
    return self
end

function PlayerClass:update(dt)

end


function PlayerClass:draw()

end