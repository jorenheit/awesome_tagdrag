local mouse = mouse
local client = client
local awful = require("awful")

module ("tagdrag")

function drag(dir, tags)

   local s = mouse.screen
   local c = client.focus
   if c == nil then return end
   

   local t = c:tags()[1]
   local nexttag = awful.tag.getidx() + dir

   if nexttag > #tags[s] then
      nexttag = 1
   elseif nexttag < 1 then
      nexttag = #tags[s]
   end

   awful.client.movetotag(tags[s][nexttag], c)
   if dir == 1 then 
      awful.tag.viewnext()
   elseif dir == -1 then
      awful.tag.viewprev()
   end
   c:raise()
end

return drag
