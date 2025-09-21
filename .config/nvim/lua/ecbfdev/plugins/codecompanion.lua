return {
  "olimorris/codecompanion.nvim",
  -- enabled = false,
  opts = {
    strategies = {
      chat = {
        adapter = "copilot",
      },
      inline = {
        adapter = "copilot",
      },
      agent = {
        adapter = "copilot",
      },
    },
    adapters = {
      copilot = function()
        return require("codecompanion.adapters").extend("copilot", {
          schema = {
            model = {
              -- default = "claude-3.7-sonnet",
              default = "claude-sonnet-4",
              -- default = "claude-3.5-sonnet",
              -- default = "gemini-2.5-pro",
            },
          },
        })
      end,
    },
  },
  keys = {
    {
      "<leader>aa",
      mode = { "n", "v" },
      "<cmd>CodeCompanionChat Toggle<cr>",
      desc = "CodeCompanionChat Toggle",
      silent = true,
      noremap = true,
    },
    {
      "<leader>ac",
      mode = { "n", "v" },
      "<cmd>CodeCompanionChat<cr>",
      desc = "CodeCompanionChat (New Chat)",
      silent = true,
      noremap = true,
    },
    {
      "<leader>as",
      mode = { "n", "v" },
      "<cmd>CodeCompanionActions<cr>",
      desc = "CodeCompanionActions",
      silent = true,
      noremap = true,
    },
    {
      "<leader>ax",
      mode = { "v" },
      "<cmd>CodeCompanionChat Add<cr>",
      desc = "CodeCompanionChat Add",
      silent = true,
      noremap = true,
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "j-hui/fidget.nvim",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "codecompanion", "Avante" },
      },
      ft = { "markdown", "codecompanion", "Avante" },
    },
  },
  init = function()
    require("ecbfdev.plugins.codecompanion.fidget-spinner"):init()
  end,
}
