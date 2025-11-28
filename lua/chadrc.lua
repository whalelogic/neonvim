-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "chadracula",
  statusline = {
    theme = "ayu",
    separator_style = "round",
  },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.nvdash = { load_on_startup = true }
M.ui = {
  tabufline = {
    lazyload = false,
  },
}

-- Configure nvim-lint (for eslint_d)
M.lint = {
  linters_by_ft = {
    javascript = { "eslint_d" },
    typescript = { "eslint_d" },
    javascriptreact = { "eslint_d" },
    typescriptreact = { "eslint_d" },
  },
}

-- Configure conform.nvim (for prettier)
M.format = {
  formatters_by_ft = {
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },

    -- Make sure to keep the default for lua
    lua = { "stylua" },
  },
}

-- Configure nvim-treesitter parsers
M.plugins = {
  ["nvim-treesitter/nvim-treesitter"] = {
    ensure_installed = {
      -- NvChad Defaults
      "lua",
      "vim",
      "vimdoc",

      -- Parsers matching your lspconfig.lua
      "html",
      "go",
      "templ",
      "python",

      -- Parsers for JS/TS
      "javascript",
      "typescript",
      "tsx",
    },
  },
}

return M
