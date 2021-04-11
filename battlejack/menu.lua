menu = {}

local entries = {"New game", "Load saved", "Window mode", "Save", "Quit"}

local menmax = 5

function menu.activate()
	STATE = menu
	selection = 1
end

function menu.draw()
	love.graphics.setBackgroundColor(0.1,0.1,0.1)
	for i=1,5 do
	if i == selection then
		love.graphics.print(">", 30, 10+i*16)
	end
	-- menu text
	love.graphics.print(entries[i], 45, 10+i*16)
	end
end

function love.keypressed(k)
	if k == "down" then
	selection = wrap(selection+1)

	elseif k == "up" then
	selection =wrap(selection-1)

	elseif k == "return" or k == " " then
		if selection == 1 then
			game.new()
		elseif selection == 2 then
			game.load()
		elseif selection == 3 then
			window.activate()
		elseif selection == 4 then
			save()
		elseif selection == 5 then
			love.event.quit()
		end
	elseif k == "escape" then
		game.activate()
	end
end

function wrap(sel)
	if sel > menmax then
		sel = 1
	end
	if sel < 1 then
		sel = menmax
	end
	return sel
end