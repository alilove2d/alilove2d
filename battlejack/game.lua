game = {}

function game.activate()
	STATE = game
end

function game.draw()
	love.graphics.setBackgroundColor(0.2,0.3,0.5)
end

function game.keypressed(k, uni)
	if k == "escape" then
		menu.activate()
	end
end