return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = { 
            'c', 
            'cpp', 
            'cuda', 
            'cmake', 
            'gitcommit', 
            'git_rebase', 
            'latex', 
            'make', 
            'json', 
            'llvm', 
            'lua', 
            'python', 
            'rust', 
            'typescript', 
            'help' 
        },
        highlight = { 
            enable = true,
        },
    },
}
