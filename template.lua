local SCREEN_FRAMERATE = 15
local screen_dirty = true
local GRID_FRAMERATE = 30
local grid_dirty = true

g = grid.connect()

function init()

-- SCREEN DRAWING
  screen.aa(1)
  local screen_redraw_metro = metro.init()
  screen_redraw_metro.event = function()
    if screen_dirty then
      redraw()
      screen_dirty = false
    end
  end
  screen_redraw_metro:start(1 / SCREEN_FRAMERATE)

-- GRID DRAWING  
  local grid_redraw_metro = metro.init()
  grid_redraw_metro.event = function()
    if grid_dirty then
      grid_redraw()
      grid_dirty = false
    end
  end
  grid_redraw_metro:start(1 / GRID_FRAMERATE)
end

  
-- SCREEN FUNCTIONS
function redraw()
  screen.clear()
  
  screen.move(8,12)
  screen.text("hello")

  screen.update()
end

-- GRID FUNCTION
function grid_redraw()
  g:all(0)
  g:refresh()
end

g.key = function(x,y,z)
  grid_dirty = true
end

-- KEYS
function key(n,z)
  if n == 1 then
  elseif n == 2 then
  elseif n == 3 then
  end
end

-- ENCODERS
function enc(n,d)
  if n==1 then
  elseif n==2 then
  elseif n==3 then
  end
end

