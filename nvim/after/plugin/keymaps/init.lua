local Remap = require("caleb.keymap")

local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap

-- split window
nnoremap("sh", ":split<Return><C-w>w")
nnoremap("sv", ":vsplit<Return><C-w>w")

-- indentation
vnoremap("<", "<gv")
vnoremap(">", ">gv")
