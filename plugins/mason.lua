-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = { "clangd", "pyright", "texlab", "rust_analyzer" },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      -- ensure_installed = { "prettier", "stylua" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
        automatic_setup = true,
      ensure_installed = { "python, cppdbg", "codelldb" },
      handlers = {
        python = function(config)
          local dap = require "dap"
          dap.adapters.python = {
            type = "executable",
            command = vim.trim(vim.fn.system('which python')),
            args = { "-m", "debugpy.adapter" },
          }
          dap.configurations.python = {
            {
              type = "python",
              request = "launch",
              name = "Launch file",
              program = "${file}", -- This configuration will launch the current file if used.
              stopOnEntry = true,
            },
          }
          require("mason-nvim-dap").default_setup(config)
        end,
        -- cppdbg = function(source_name)
        --   local dap = require "dap"
        --   dap.adapters.cppdbg = {
        --     id = 'cppdbg',
        --     type = 'executable',
        --     command = vim.env.HOME .. '/.vscode-server/extensions/ms-vscode.cpptools-1.15.4-linux-x64/debugAdapters/bin/OpenDebugAD7',
        --   }
        --   dap.configurations.rust = {
        --     {
        --       type = "cppdbg",
        --       request = "launch",
        --       name = "Launch file",
        --       program = function()
        --         return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        --       end,
        --       cwd = '${workspaceFolder}',
        --       stopAtEntry = false,
        --     },
        --   }
        -- end,
        -- function(config)
        --     -- all sources with no handler get passed here

        --     -- Keep original functionality
        --     require('mason-nvim-dap').default_setup(config)
        --   end,
        -- codelldb = function(config)
        --   local dap = require "dap"
        --   dap.configurations.rust = {
        --     {
        --       type = "codelldb",
        --       request = "launch",
        --       name = "LLDB Launch file",
        --       program = function()
        --         return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        --       end,
        --       cwd = '${workspaceFolder}',
        --       stopOnEntry = true,
        --     },
        --   }
        --   require("mason-nvim-dap").default_setup(config) 
        -- end,
      },
    },
  },
}
