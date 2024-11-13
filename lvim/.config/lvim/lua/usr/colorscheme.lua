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

if lvim.colorscheme == "edge" then
  vim.g.edge_transparent_background = 1
  vim.g.edge_enable_italic = true
  vim.g.edge_style = 'default'
  -- vim.g.edge_better_performance = 1
  for _, name in ipairs(hl_groups) do
    vim.cmd(string.format("highlight %s ctermbg=none guibg=none", name))
  end
  vim.cmd.colorscheme('edge')
end

if lvim.colorscheme == "defaultplus" then
  vim.g.edge_transparent_background = 1
  for _, name in ipairs(hl_groups) do
    vim.cmd(string.format("highlight %s ctermbg=none guibg=none", name))
  end
end
