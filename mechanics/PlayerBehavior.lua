require 'objects/Player'
PlayerBehavior = PlayerClass:extend()

function PlayerBehavior:load()
    images = {
        idle = love.graphics.newImage('gfx/temp/Main Characters/Virtual Guy/Idle (32x32).png'),
        walk = love.graphics.newImage('gfx/temp/Main Characters/Virtual Guy/Run (32x32).png')
    }
    self.setImages(images)
end

function PlayerBehavior:update(dt)
    print('value from extended class')
    -- update player position
    
    self.state = 'idle'

    if love.keyboard.isDown("up") then
        self.y = self.y - (1 * self.speed * dt)
        self.state = 'walk'
    end
    
    if love.keyboard.isDown("down") then
        self.y = self.y + (1 * self.speed * dt)
        self.state = 'walk'
    end

    if love.keyboard.isDown("right") then
        self.x = self.x + (1 * self.speed * dt)
        self.state = 'walk'
    end
    
    if love.keyboard.isDown("left") then
        self.x = self.x - (1 * self.speed * dt)
        self.state = 'walk'
    end

    if love.keyboard.isDown("space") then
        print("Spacebar pressed")
        self.state = 'jumping'
    end

end


function PlayerBehavior:draw()
    local images = self.getImages()
    love.graphics.draw(images[self.state], self.getPosX(), self.getPosY())
end