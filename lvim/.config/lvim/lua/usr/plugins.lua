-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Additional Plugins
lvim.plugins = {
  -- {
  --   "folke/trouble.nvim",
  --   cmd = "TroubleToggle",
  -- },
  -- {
  --   "karb94/neoscroll.nvim",
  --   event = "WinScrolled",
  --   config = function()
  --     require('neoscroll').setup({
  --       -- All these keys will be mapped to their corresponding default scrolling animation
  --       mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>',
  --         '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
  --       hide_cursor = true, -- Hide cursor while scrolling
  --       stop_eof = true, -- Stop at <EOF> when scrolling downwards
  --       use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
  --       respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
  --       cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
  --       easing_function = nil, -- Default easing function
  --       pre_hook = nil, -- Function to run before the scrolling animation starts
  --       post_hook = nil, -- Function to run after the scrolling animation ends
  --     })
  --   end
  -- },

  -- THEMES
  { "lunarvim/onedarker" },
  { "lunarvim/darkplus.nvim" },
  {
    "ChristianChiarulli/defaultplus",
    -- lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    -- priority = 1000, -- make sure to load this before all the other start plugins
    vim.cmd.colorscheme('defaultplus')
  },
  { "sainnhe/sonokai" },
  { "sainnhe/everforest" },
  { "sainnhe/gruvbox-material" },
  {
    'sainnhe/edge',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.edge_enable_italic = true
      -- vim.g.edge_style = 'aura'
      -- vim.g.edge_better_performance = 1
      -- vim.cmd.colorscheme('edge')
    end
  },
  {
    "folke/tokyonight.nvim",
    -- lazy = false,
    -- priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    }
  },
  -- PYTHON IDE
  -- python dev
  { "AckslD/swenv.nvim" },
  { "stevearc/dressing.nvim" },
  -- python dap
  {
    "mfussenegger/nvim-dap-python",
    "nvim-neotest/neotest",
    "nvim-neotest/nvim-nio",
    "nvim-neotest/neotest-python",
  },
  -- DART IDE
  -- flutter dev
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,
  },
  -- MISC
  {
    'mawkler/modicator.nvim',
    event = "ModeChanged",
    dependencies = {
      'sainnhe/edge',
    },
    init = function()
      -- These are required for Modicator to work
      vim.o.cursorline = true
      vim.o.number = true
      vim.o.termguicolors = true
    end,
    opts = {
      -- Warn if any required option above is missing. May emit false positives
      -- if some other plugin modifies them, which in that case you can just
      -- ignore. Feel free to remove this line after you've gotten Modicator to
      -- work properly.
      -- show_warnings = true,
      highlights = {
        -- Default options for bold/italic
        defaults = {
          bold = false,
          italic = false,
        },
        -- Use `CursorLine`'s background color for `CursorLineNr`'s background
        use_cursorline_background = false,
      },
      integration = {
        lualine = {
          enabled = true,
          -- Letter of lualine section to use (if `nil`, gets detected automatically)
          mode_section = 'a',
          -- Whether to use lualine's mode highlight's foreground or background
          highlight = 'bg',
        },
      },
    },
  }
}
