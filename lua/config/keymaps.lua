-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

local function nmap(shortcut, command)
  map("n", shortcut, command)
end

-- map to insert mode
local function imap(shortcut, command)
  map("i", shortcut, command)
end

-- leader keys
vim.g.mapleader = " "

local discipline = require("hisham.discipline")

discipline.cowboy()

--
-- common bindings
--
nmap("<leader>w", ":w<CR>")
nmap("<leader>q", ":q!<>CR")
nmap("<leader>f", "gg=G")

--
-- tabs
--
nmap("<leader>t", ":tabnew")

for i = 1, 10, 1 do
  local binding = "<leader>" .. i
  local cmd = tostring(i) .. "gt"
  nmap(binding, cmd)
end
