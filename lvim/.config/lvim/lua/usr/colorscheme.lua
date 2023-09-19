local hl_groups = {
  "NormalFloat",
  "FloatBorder",
}

if lvim.colorscheme == "gruvbox-material" then
  vim.g.gruvbox_material_transparent_background = 1
  for _, name in ipairs(hl_groups) do
    vim.cmd(string.format("highlight %s ctermbg=none guibg=none", name))
  end
end
