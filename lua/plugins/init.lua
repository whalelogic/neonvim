return {
  {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      highlight = { enable = true },
      indent = { enable = true },
      rainbow = { enable = true }
    }
  end
},
{
  "p00f/nvim-ts-rainbow"
},

    -- Statusline: clean, informative
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup {
        options = {
          theme = "auto",
          section_separators = '',
          component_separators = ''
        }
      }
    end
  },

  {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  config = function()
    require("lspsaga").setup({
      ui = { border = "rounded" },
      symbol_in_winbar = { enable = false },
    })
    -- K shows docs
    vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true, desc = "Hover docs" })
    -- Extras you’ll want:
    vim.keymap.set("n", "ga", "<cmd>Lspsaga code_action<CR>", { silent = true })
    vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
  end,

  dependencies = { "nvim-treesitter/nvim-treesitter" },
  },

{
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<C-l>",
          next = "<C-]>",
          prev = "<C-[>",
          dismiss = "<C-e>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        gitcommit = true,
        yaml = true,
        ["*"] = true,
      },
    })
  end,
},
  --   -- Smooth scrolling
  -- {
  --   "karb94/neoscroll.nvim",
  --   config = function()
  --     require("neoscroll").setup()
  --   end
  -- },
  --
  -- Dashboard: startup screen
  {
    "goolord/alpha-nvim",
    config = function()
      require("alpha").setup(require("alpha.themes.startify").config)
    end
  },

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
   { import = "nvchad.blink.lazyspec" },

   {
   	"nvim-treesitter/nvim-treesitter",
   	opts = {
   		ensure_installed = {
   			"vim", "lua", "vimdoc",
        "html", "css", "go", "rust", "javascript", "typescript", "python", "cpp", "ruby"
   		},
   	},
   },
  {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup {
      ensure_installed = {
        "tsserver",
        "pyright",
        "gopls",
        "superhtml",
        "jsonls",
        "yamlls",
        "javascript",
        "typescript",
        "templ",
        "tailwindcss",
        "htmx",
        "html",
        "cssls",
        "clangd",
        "rust_analyzer",

      }
    }
  end
}

}
