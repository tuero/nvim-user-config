return {
    {
        "tuero/onedark.nvim",
        as = "onedark",
        branch = "inactive_bg",
        config = function()
            require('onedark').setup {
                style = 'warmer',
                colors = {
                    turquoise = "#1ec4ae",
                    bg0 = "#202023",
                },
                highlights = {
                    ["@lsp.type.variable"] = {fg = '$fg'},
                    ["@lsp.type.property"] = {fg = '$cyan'},
                    ["@lsp.type.macro"] = {fg = '$turquoise', fmt = 'bold'},
                    ["@lsp.type.typeParameter"] = {fg = '$yellow', fmt = 'bold,italic'},
                }
            }
            require('onedark').load()
        end,
    },
    {
        "ray-x/lsp_signature.nvim",
        event = "BufRead",
        config = function()
            cfg_lsp_signature = {
                hint_prefix="* ",
                toggle_key="<M-x>",
            }
            require("lsp_signature").setup(cfg_lsp_signature)
        end,
    },
    {
        "lervag/vimtex", 
        lazy = false,
    },
    "nvie/vim-flake8",
    {
        "echasnovski/mini.move", 
        lazy = false,
        config = function()
            require('mini.move').setup()
        end,
    },
    -- {
    --     "simrat39/rust-tools.nvim",
    --     after = { "mason-lspconfig.nvim" },
    --     -- Is configured via the server_registration_override installed below!
    --     config = function()
    --       require("rust-tools").setup {
    --         server = astronvim.lsp.server_settings "rust_analyzer", -- get the server-settings from the AstroNvim tables to allow use with lsp.server-settings and lsp.on_attach user configuration
    --       }
    --     end,
    --   },
    -- {
    --     "simrat39/rust-tools.nvim",
    --     config = function()
    --        Update this path
    --         local extension_path = vim.env.HOME .. '/.vscode-server/extensions/vadimcn.vscode-lldb-1.9.1/'
    --         local codelldb_path = extension_path .. 'adapter/codelldb'
    --         local liblldb_path = extension_path .. 'lldb/lib/liblldb'
    --         local this_os = vim.loop.os_uname().sysname;

    --         -- The path in windows is different
    --         if this_os:find "Windows" then
    --             codelldb_path = package_path .. "adapter\\codelldb.exe"
    --             liblldb_path = package_path .. "lldb\\bin\\liblldb.dll"
    --         else
    --             -- The liblldb extension is .so for linux and .dylib for macOS
    --             liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")
    --         end

    --         local opts = {
    --             -- ... other configs
    --             dap = {
    --                 adapter = require('rust-tools.dap').get_codelldb_adapter(
    --                     codelldb_path, liblldb_path)
    --             }
    --         }
    --         require('rust-tools').setup(opts)
    --     end,
    -- },
    -- "ziontee113/syntax-tree-surfer",
    -- {
    --     "booperlv/nvim-gomove",
    --     event = "BufEnter",
    --     config = function()
    --         require("gomove").setup {
    --             -- whether or not to map default key bindings, (true/false)
    --             map_defaults = true,
    --             -- whether or not to reindent lines moved vertically (true/false)
    --             reindent = true,
    --             -- whether or not to undojoin same direction moves (true/false)
    --             undojoin = true,
    --             -- whether to not to move past end column when moving blocks horizontally, (true/false)
    --             move_past_end_col = false,
    --           }
    --     end,
    -- }

  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
