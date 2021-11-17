local Config = require 'config'
Input = require 'lib/Input/input'
Animation = require 'helpers/animation'
require 'mechanics/PlayerBehavior'


Timer = require 'lib/hump/timer'


function love.resize(w, h)
    print(("Window resized to width: %d and height: %d."):format(w, h))
end

-- keyboard mapping
function love.keypressed(k)
	if k == 'escape' then
        print('Quit Game')
		love.event.push('quit') -- Quit the game.
	end	
end

-- Load the game config
function love.load()
    timer = Timer()
    input = Input() -- lib to handle inputs
    input:bind('w', 'test') -- bind mouse1 to test
    -- Screen dimensions
    width, height = love.window.getDesktopDimensions(1) -- get the desktop dimensions of first monitor


    -- Background Loop Music
    music = love.audio.newSource("gfx/audio/OfFarDifferentNature-VictoryParty[v2](CC-BY4.0).ogg", "stream")
    music:setLooping(true)
    music:setVolume(0.1)
    --music:play()

    love.window.setMode(800, 600, {fullscreen=Config.fullscreen, vsync=Config.vsync, resizable=Config.resizable})
    love.window.setTitle( Config.title )

    -- Entities
    Player = PlayerBehavior()
    Player:load()



end

-- Update at every frame
function love.update(dt)

    -- handle bindings of input
    if input:pressed('test') then print('pressed') end
    if input:released('test') then print('released') end
    if input:down('test') then print('down') end

    Player:update(dt)
end

-- Draw
function love.draw()
    Player:draw()
end