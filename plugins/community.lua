return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  version = "^6",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
