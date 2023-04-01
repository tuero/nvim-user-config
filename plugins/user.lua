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
