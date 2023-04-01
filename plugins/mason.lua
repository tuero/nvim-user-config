-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = { "clangd", "pyright", "texlab" },
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
      ensure_installed = { "python, cppdbg" },
    },
    config = function(plugin, opts)
        local mason_nvim_dap = require "mason-nvim-dap"
            mason_nvim_dap.setup(opts) -- run setup
            mason_nvim_dap.setup_handlers {
                python = function(source_name)
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
                end,
                -- cppdbg = function(source_name)
                --     local home_path = vim.fn.expand('$HOME')

                --     local dap = require "dap"
                --     dap.adapters.cppdbg = {
                --         id = 'cppdbg',
                --         type = 'executable',
                --         command = home_path .. '/extension/debugAdapters/bin/OpenDebugAD7',
                --     }
                    
                --     local mi_mode = ""
                --     local mi_debugger_path = ""
                --     -- Unsafe Defaults
                --     local mi_mode = ""
                --     local mi_debugger_path = ""

                --     -- Unix
                --     if vim.loop.os_uname().sysname == 'Linux' then
                --         mi_mode = "gdb"
                --         mi_debugger_path = vim.trim(vim.fn.system('which gdb'))
                --     -- MacOS
                --     elseif vim.loop.os_uname().sysname == 'Darwin' then
                --         mi_mode = "lldb"
                --         mi_debugger_path = vim.trim(vim.fn.system('which lldb-mi'))
                --     else 
                --         error("Unsupported OS")
                --     end
                --     dap.configurations.cpp = {
                --     {
                --         name = "Launch file",
                --         type = "cppdbg",
                --         request = "launch",
                --         program = function()
                --             return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                --         end,
                --         cwd = '${workspaceFolder}',
                --         stopAtEntry = true,
                --         MIMode = mi_mode,
                --         miDebuggerPath = mi_debugger_path
                --     },
                --     }
                --     dap.configurations.c = dap.configurations.cpp
                -- end,
            }
        end,
    },
}
