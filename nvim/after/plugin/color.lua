local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end

vim.g.gruvbox_contrast_dark = 'medium'
vim.g.gruvbox_invert_selection = '0'

