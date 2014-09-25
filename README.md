Drag clients to other tags and move with them


INSTALLATION:
1)

  cd ~/.config/awesome

  git clone https://github.com/jorenheit/awesome_alttab.git alttab

2) Add to rc.lua:
   local tagdrag = require("tagdrag")

3) Add key-bindings to table, for example:

    awful.key({ modkey, "Shift"}, "Right", function () tagdrag(1, tags) end),
    awful.key({ modkey, "Shift"}, "Left", function () tagdrag(-1, tags) end),



