return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function()
    local dashboard = require "alpha.themes.dashboard"
    dashboard.section.header.val = {
        -- "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣄⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
        -- "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣷⣴⣿⡄⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀",
        -- "    ⠀⠀⠀⠀⠀⠀⠀⠀⠰⣶⣾⣿⣿⣿⣿⣿⡇⠀⢠⣷⣤⣶⣿⡇⠀⠀⠀⠀⠀⠀",
        -- "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣀⣿⣿⣿⣿⣿⣧⣀      ",
        -- "    ⠀⠀⠀⠀⠀⠀⠀⣷⣦⣀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃      ",
        -- "    ⠀⠀⠀⠀⢲⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀   ",
        -- "    ⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀  ",
        -- "    ⠀⠀⠀⠀⠀⠚⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠂⠀⠀⠀⠀⠀   ",
        -- "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⢻⣿⣿⡿⠛⠉⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
        -- "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠋⠁⠀⠀⠀⠸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀   ",
        -- "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ",

        "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣄⠀⠀⢀            ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣷⣴⣿⡄⠀⠀⠀⠀⠀⢀     ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠰⣶⣾⣿⣿⣿⣿⣿⡇⠀⢠⣷⣤⣶⣿⡇⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣀⣿⣿⣿⣿⣿⣧⣀   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⣷⣦⣀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢲⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀  ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁     ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠚⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠂⠀⠀   ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⢻⣿⣿⡿⠛⠉⡇⠀         ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠋⠁⠀⠀⠀⠸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
        "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⡀⠀⠀⠀⠀⠀⠀⠀ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
      }
    dashboard.section.header.opts.hl = "DashboardHeader"
    
    local button = require("astronvim.utils").alpha_button
    dashboard.section.buttons.val = {
        button("LDR n", "  New File  "),
        button("LDR f f", "  Find File  "),
        button("LDR f o", "  Recents  "),
        button("LDR f w", "  Find Word  "),
        button("LDR f '", "  Bookmarks  "),
        button("LDR S l", "  Last Session  "),
    }
    
    dashboard.section.footer.val =
        { " ", " ", " ", "Loaded " .. require("lazy").stats().count .. " plugins  " }
    dashboard.section.footer.opts.hl = "DashboardFooter"
    
    dashboard.config.layout[1].val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) }
    dashboard.config.layout[3].val = 5
    dashboard.config.opts.noautocmd = true
    return dashboard
    end,
    config = function(_, opts)
        require("alpha").setup(opts.config)
      
        vim.api.nvim_create_autocmd("UIEnter", {
          callback = function()
            local stats = require("lazy").stats()
            local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
            opts.section.footer.val = { 
                " ", 
                " ", 
                " ",
                "Loaded " .. stats.count .. " plugins   in " .. ms .. "ms" }

                -- "         ▄▀▄     ▄▀▄", 
                -- "        ▄█░░▀▀▀▀▀░░█▄", 
                -- "    ▄▄  █░░░░░░░░░░░█  ▄▄", 
                -- "   █▄▄█ █░░▀░░┬░░▀░░█ █▄▄█",
                -- "Loaded " .. stats.count .. " plugins   in " .. ms .. "ms" }

                -- "     ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                -- " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣷⡀⣀⣠⡤⠤⠤⠤⠤⠤⣄⣀⡀⣴⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                -- " ⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀",
                -- " ⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀",
                -- " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⢿⡿⠁⠀⠀⠀⣠⣤⣤⣄⠀⠀⠀⠀⢠⣤⣤⣄⡀⠀⠀⠀⢻⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀",
                -- " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠃⠀⠀⢀⣾⣿⣿⣿⡟⣀⣀⣀⣀⢸⣿⣿⣿⣷⡄⠀⠀⠀⣧⡀⣀⡀⠀⠀⠀⠀⠀⠀⠀",
                -- " ⠀⠀⠀⠀⠀⠀⠀⢀⣀⡀⡟⠀⠀⠀⢸⣿⣿⣿⡏⠘⢿⣿⣿⣿⠏⠙⣿⣿⣿⡇⢀⣴⣾⡿⢿⡿⢿⣶⣦⡀⠀⠀⠀⠀",
                -- " ⠀⠀⠀⠀⠀⣴⣾⣿⣿⣿⣿⣶⣄⠀⠀⠻⣿⠿⠃⠠⣀⣨⣏⣀⡀⠀⠻⠿⡿⠁⢸⣿⣹⡷⠿⠿⢿⣍⣿⡇⠀⠀⠀⠀",
                -- " ⣀⣀⣀⣀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣧⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣘⣿⣿⣄⣀⣀⣀⣿⣿⣇⣀⣀⣀⣤",
                -- " ⠀⠀⠀⠀⠘⠿⢿⣿⣿⣿⣿⣿⠿⠏ Loaded " .. stats.count .. " plugins   in " .. ms .. "ms",
                -- " ⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"}

                -- "                ＿＿", 
                -- " 　　　　　  ✿＞　　 フ", 
                -- " 　　　　　 | 　_　 _ l", 
                -- " 　 　　　／` ミ＿x ノ",
                -- " 　　 　 /　　　 　 |", 
                -- " 　　　 /　 ヽ　　 ﾉ", 
                -- " 　 　 │　　 |　|　|", 
                -- " 　／￣|　　 |　|　|", 
                -- " 　| (￣ヽ＿_ヽ_)__)", 
                -- " 　＼Loaded " .. stats.count .. " plugins   in " .. ms .. "ms", 
                -- " 　 ＼二つ"} 
            opts.section.footer.opts.hl = "DashboardFooter"
          end,
        })
      end
  },
  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },
  --
  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },
  -- {
  --   "windwp/nvim-autopairs",
  --   config = function(plugin, opts)
  --     require "plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom autopairs configuration such as custom rules
  --     local npairs = require "nvim-autopairs"
  --     local Rule = require "nvim-autopairs.rule"
  --     local cond = require "nvim-autopairs.conds"
  --     npairs.add_rules(
  --       {
  --         Rule("$", "$", { "tex", "latex" })
  --           -- don't add a pair if the next character is %
  --           :with_pair(cond.not_after_regex "%%")
  --           -- don't add a pair if  the previous character is xxx
  --           :with_pair(
  --             cond.not_before_regex("xxx", 3)
  --           )
  --           -- don't move right when repeat character
  --           :with_move(cond.none())
  --           -- don't delete if the next character is xx
  --           :with_del(cond.not_after_regex "xx")
  --           -- disable adding a newline when you press <cr>
  --           :with_cr(cond.none()),
  --       },
  --       -- disable for .vim files, but it work for another filetypes
  --       Rule("a", "a", "-vim")
  --     )
  --   end,
  -- },
  -- By adding to the which-key config and using our helper function you can add more which-key registered bindings
  -- {
  --   "folke/which-key.nvim",
  --   config = function(plugin, opts)
  --     require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- Add bindings which show up as group name
  --     local wk = require "which-key"
  --     wk.register({
  --       b = { name = "Buffer" },
  --     }, { mode = "n", prefix = "<leader>" })
  --   end,
  -- },
}
