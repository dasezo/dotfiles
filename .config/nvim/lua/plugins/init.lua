return {
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "configs.none-ls"
    end,
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettierd",
        "typescript-language-server",
        "tailwindcss-language-server",
        "eslint-lsp",
      },
    },
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "html",
      "vue",
    },
  },
  --
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "go",
        "rust",
        "php",
        "gitignore",
        "scss",
        "sql",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
      --MDX
      vim.filetype.add {
        extension = {
          mdx = "mdx",
        },
      }
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
  {
    "IogaMaster/neocord",
    event = "VeryLazy",
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = { "markdown" },
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    keys = {
      { "<leader>mp", ":MarkdownPreview<CR>", mode = "n", desc = "Preview" },
    },
  },
  {
    "folke/todo-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local todo_comments = require "todo-comments"

      -- set keymaps
      local keymap = vim.keymap -- for conciseness

      keymap.set("n", "=t", function()
        todo_comments.jump_next()
      end, { desc = "Next todo comment" })

      keymap.set("n", ")t", function()
        todo_comments.jump_prev()
      end, { desc = "Previous todo comment" })

      todo_comments.setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    event = { "BufReadPre", "BufNewFile" },
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = true,
  },
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },
  {
    "luukvbaal/statuscol.nvim",
    config = function()
      local builtin = require "statuscol.builtin"
      require("statuscol").setup {
        segments = {
          { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
          { text = { " %s" }, click = "v:lua.ScSa" },
          { text = { builtin.lnumfunc, " " }, condition = { true, builtin.not_empty }, click = "v:lua.ScLa" },
        },
      }
    end,
  },

  {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    opts = {
      fold_virt_text_handler = require "configs.ufo",
      provider_selector = function(bufnr, filetype, buftype)
        return { "treesitter", "indent" }
      end,
    },
  },
  {
    "github/copilot.vim",
    config = false,
    event = "VeryLazy",
    init = function()
      vim.keymap.set("i", "<C-a>", 'copilot#Accept("<CR>")', {
        noremap = true,
        silent = true,
        expr = true,
        replace_keycodes = false,
      })

      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
    end,
  },

  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    event = "VeryLazy",
    dependencies = { "github/copilot.vim", "nvim-lua/plenary.nvim" },
    opts = {
      debug = false,
    },
  },
  {
    "christoomey/vim-tmux-navigator",
  },
  {
    "gbprod/substitute.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local substitute = require "substitute"

      substitute.setup()
    end,
  },
}
