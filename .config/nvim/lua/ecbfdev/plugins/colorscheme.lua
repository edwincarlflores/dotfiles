return {
  -- {
  --   "eddyekofo94/gruvbox-flat.nvim",
  --   priority = 1000,
  --   enabled = true,
  --   config = function()
  --     vim.g.gruvbox_flat_style = "hard"
  --     vim.cmd([[colorscheme gruvbox-flat]])
  --   end,
  -- },
  -- {
  --   "AlexvZyl/nordic.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("nordic").load()
  --   end,
  -- },
  {
    "mellow-theme/mellow.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd([[colorscheme mellow]])
    end,
  },
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.material_style = "deep ocean"
      -- vim.cmd([[colorscheme material]])
    end,
  },
  {
    "ghifarit53/tokyonight-vim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.g.tokyonight_style = "night"
      -- vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    "sam4llis/nvim-tundra",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.background = "dark"
      -- vim.cmd([[colorscheme tundra]])
    end,
  },
  {
    "sainnhe/everforest",
    priority = 1000,
    config = function()
      vim.g.everforest_background = "hard"
      -- vim.cmd([[colorscheme everforest]])
    end,
  },
  {
    "sainnhe/gruvbox-material",
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "mix" -- material, mix, original
      vim.g.gruvbox_material_transparent_background = 1
      -- vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
      -- vim.g.gruvbox_material_float_style = "dim" -- Background of floating windows
      -- vim.g.gruvbox_material_statusline_style = "default"

      -- vim.g.gruvbox_material_better_performance = 1
      -- vim.g.gruvbox_material_colors_override = { bg0 = "#0e1010" } -- #0e1010

      -- vim.cmd([[colorscheme gruvbox-material]])
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "latte",
          dark = "mocha",
        },
        integrations = {
          harpoon = true,
          telescope = {
            enabled = true,
            style = "nvchad",
          },
        },
      })

      -- vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        theme = "wave", -- wave, dragon, lotus
        background = {
          dark = "wave",
          light = "lotus",
        },
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
        -- overrides = function(colors)
        --   local theme = colors.theme
        --   return {
        --     NormalFloat = { bg = "none" },
        --     FloatBorder = { bg = "none" },
        --     FloatTitle = { bg = "none" },
        --
        --     -- Save an hlgroup with dark background and dimmed foreground
        --     -- so that you can use it where your still want darker windows.
        --     -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
        --     NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
        --
        --     -- Popular plugins that open floats will link to NormalFloat by default;
        --     -- set their background accordingly if you wish to keep them dark and borderless
        --     LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        --     MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        --   }
        -- end,
      })

      vim.cmd([[colorscheme kanagawa]])
    end,
  },
  {
    "sainnhe/gruvbox-material",
    priority = 1000,
    config = function()
      -- vim.cmd([[colorscheme gruvbox-material]])
    end,
  },
  -- {
  --   "luisiacc/gruvbox-baby",
  --   priority = 1000 ,
  --   config = function()
  --     vim.g.gruvbox_baby_function_style = "NONE"
  --     vim.g.gruvbox_baby_keyword_style = "NONE"
  --     vim.g.gruvbox_baby_background_color = "dark"
  --     vim.g.gruvbox_baby_telescope_theme = 1
  --     vim.cmd[[colorscheme gruvbox-baby]]
  --   end,
  -- },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
        overrides = {
          SignColumn = { bg = "#1d2021" },
        },
        italic = {
          strings = false,
          emphasis = false,
          comments = true,
          operators = false,
          folds = true,
        },
      })

      -- vim.cmd([[colorscheme gruvbox]])
    end,
  },
  {
    "bluz71/vim-nightfly-guicolors",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      -- vim.cmd([[colorscheme nightfly]])
    end,
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- local bg = "#011628"
      -- local bg_dark = "#011423"
      -- local bg_highlight = "#143652"
      -- local bg_search = "#0A64AC"
      -- local bg_visual = "#275378"
      -- local fg = "#CBE0F0"
      -- local fg_dark = "#B4D0E9"
      -- local fg_gutter = "#627E97"
      -- local border = "#547998"

      -- require("tokyonight").setup({
      --   style = "night",
      --   on_colors = function(colors)
      --     colors.bg = bg
      --     colors.bg_dark = bg_dark
      --     colors.bg_float = bg_dark
      --     colors.bg_highlight = bg_highlight
      --     colors.bg_popup = bg_dark
      --     colors.bg_search = bg_search
      --     colors.bg_sidebar = bg_dark
      --     colors.bg_statusline = bg_dark
      --     colors.bg_visual = bg_visual
      --     colors.border = border
      --     colors.fg = fg
      --     colors.fg_dark = fg_dark
      --     colors.fg_float = fg
      --     colors.fg_gutter = fg_gutter
      --     colors.fg_sidebar = fg_dark
      --   end,
      -- })
      -- load the colorscheme here
      -- vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
