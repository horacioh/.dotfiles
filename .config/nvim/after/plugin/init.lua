local Remap = require("horacioh.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
