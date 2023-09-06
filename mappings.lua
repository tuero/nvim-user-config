-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    ["<leader>c"] = {
      function()
        local bufs = vim.fn.getbufinfo { buflisted = true }
        require("astronvim.utils.buffer").close(0)
        if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
      end,
      desc = "Close buffer",
    },
    ["<F5>"] = { 
      function() 
        if vim.fn.filereadable('.vscode/launch.json') then
          require('dap.ext.vscode').load_launchjs(nil, { cppdbg = {"c", "cpp"} })
        end  
        require('dap').continue() 
      end, desc = "Debugger: Start" 
    },
    ["<leader>dc"] = { 
        function() 
          if vim.fn.filereadable('.vscode/launch.json') then
            require('dap.ext.vscode').load_launchjs(nil, { cppdbg = {"c", "cpp"} })
          end  
          require('dap').continue() 
        end, desc = "Debugger: Start" 
    },
    ["<leader>dk"] = { require('dap').up, desc = "Up stack" },
    ["<leader>dk"] = { require('dap').down, desc = "Down stack" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<M-o>"] = {
      function()
        if vim.bo.filetype == "cpp" or vim.bo.filetype == "cxx" or vim.bo.filetype == "c" then
          vim.cmd("ClangdSwitchSourceHeader")
        end
      end,
      desc = "Switch source header",
    },
    ["<M-F>"] = {
      function()
        if vim.bo.filetype == "cpp" or vim.bo.filetype == "cxx" or vim.bo.filetype == "c" or vim.bo.filetype == "cuda" then
            vim.cmd("ClangFormat")
        elseif vim.bo.filetype == 'python' then
            vim.cmd("Black")
        end
      end,
      desc = "Format",
    },
    ["<leader>pf"] = {":r ~/.vbuf<CR>", desc = "paste from file"},
    ["<leader>uT"] = {
        function()
            if(vim.api.nvim_get_var("colors_name") == "onedark") then
                vim.api.nvim_command("colorscheme default")
                vim.api.nvim_command("set background=light")
                vim.api.nvim_command("colorscheme zenbones")
            else
                vim.api.nvim_command("colorscheme default")
                vim.api.nvim_command("set background=dark")
                vim.api.nvim_command("colorscheme onedark")
            end
        end,
        desc = "Toggle Theme",
      },
  },
  v = {
    ["<leader>cf"] = {":w! ~/.vbuf<CR>", desc = "copy to file"}
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
