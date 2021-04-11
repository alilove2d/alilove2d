require("menu")
require("game")

WIDE, HIGH = 960, 720
STATE = nil

love.window.setTitle('Battlejack')
love.window.setMode(WIDE, HIGH)

function love.load()
	menu.activate()
end

function love.draw()
	STATE.draw()
end