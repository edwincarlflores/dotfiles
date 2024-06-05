return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  -- event = "VeryLazy",
  -- keys = {
  --   { "<leader>e", ":Neotree last<CR>", silent = true, desc = "File Explorer" },
  --   { "<leader>ef", ":Neotree last<CR>", silent = true, desc = "Focus File Explorer" },
  --   { "<leader>ee", ":Neotree toggle<CR>", silent = true, desc = "Toggle File Explorer" },
  --   { "<leader>er", ":Neotree buffers<CR>", silent = true, desc = "Buffer Explorer" },
  --   { "<leader>eg", ":Neotree git_status<CR>", silent = true, desc = "Git Status Explorer" },
  --   { "<leader>ew", ":Neotree close<CR>", silent = true, desc = "Close File Explorer" },
  -- },
  config = function()
    local neotree = require("neo-tree")

    neotree.setup({
      source_selector = {
        -- winbar = true,
        statusline = true,
      },
      window = {
        -- position = "float",
        position = "right",
        width = 50,
      },
      close_if_last_window = true,
      filesystem = {
        use_libuv_file_watcher = true,
        follow_current_file = {
          enabled = true, -- This will find and focus the file in the active buffer every time
          --               -- the current file is changed while the tree is open.
          leave_dirs_open = true, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
        },
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          -- hide_by_name = {
          --   "node_modules",
          -- },
          never_show = {
            ".DS_Store",
            "thumbs.db",
          },
        },
      },
      default_component_configs = {
        -- indent = {
        --   with_markers = true,
        --   with_expanders = true,
        -- },
        -- modified = {
        --   symbol = " ",
        --   highlight = "NeoTreeModified",
        -- },
        icon = {
          -- folder_closed = "",
          folder_open = "",
          -- folder_empty = "",
          folder_empty = "",
          folder_empty_open = "",
        },
        -- git_status = {
        --   symbols = {
        --     -- Change type
        --     added = "",
        --     deleted = "",
        --     modified = "",
        --     renamed = "",
        --     -- Status type
        --     untracked = "",
        --     ignored = "",
        --     unstaged = "",
        --     staged = "",
        --     conflict = "",
        --   },
        -- },
      },
    })

    local keymap = vim.keymap -- for conciseness

    -- keymap.set("n", "<leader>e", "<cmd> NvimTreeFocus <CR>", { desc = "Focus file explorer" }) -- focus file explorer
    -- keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>e", ":Neotree last<CR>", { silent = true, desc = "File Explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>ef", ":Neotree last<CR>", { silent = true, desc = "Focus File Explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>ee", ":Neotree toggle<CR>", { silent = true, desc = "Toggle File Explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>er", ":Neotree buffers<CR>", { silent = true, desc = "Buffer Explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>eg", ":Neotree git_status<CR>", { silent = true, desc = "Git Status Explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>ew", ":Neotree close<CR>", { silent = true, desc = "Close File Explorer" }) -- toggle file explorer
  end,
}
