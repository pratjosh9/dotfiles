-- restart lsp server (not on youtube nvim video)
local nnoremap = require("main.keymap").nnoremap
nnoremap("<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
