-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  print("lualine not installed!")
  return
end

-- get lualine gruvbox theme
local lualine_gruvbox = require("lualine.themes.gruvbox_dark")

-- configure lualine with modified theme
lualine.setup({
  options = {
    theme = lualine_gruvbox,
  },
})
