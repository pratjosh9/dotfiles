-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  print("nvim-tree plugin not loaded")
  return
end

-- import nvim-web-icon plugin safely
local icon_setup, nvim_web_icons = pcall(require, "nvim-web-devicons")
if not icon_setup then
  print("nvim-web-icons plugin not loaded")
  return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- configure nvim-tree
nvimtree.setup({
  -- change folder arrow icons
  renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = ">", -- arrow when folder is closed
          arrow_open = "v", -- arrow when folder is open
        },
      },
    },
  },
  -- disable window_picker for
  -- explorer to work well with
  -- window splits
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
})

nvim_web_icons.setup()
