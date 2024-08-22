{pkgs, ...}: {
  # Import all your configuration modules here
  imports = [
    ./sets.nix
    ./keymaps.nix
    ./bufferline.nix

    ./completion/cmp.nix
    ./completion/copilot.nix
    ./completion/lspkind.nix

    ./filetrees/neo-tree.nix

    ./git/neogit.nix
    ./git/lazygit.nix
    ./git/gitsigns.nix

    ./languages/nvim-lint.nix
    ./languages/treesitter/treesitter.nix
    ./languages/treesitter/treesitter-context.nix
    ./languages/treesitter/treesitter-textobjects.nix
    #./languages/treesitter/ts-autotag.nix
    #./languages/treesitter/ts-context-commentstring.nix

    ./colorschemes/base16.nix
    ./colorschemes/catppuccin.nix
    ./colorschemes/rose-pine.nix
    ./colorschemes/kanagawa.nix
    (import ./colorschemes/github-dark.nix {inherit pkgs;})

    ./lsp/conform.nix
    ./lsp/fidget.nix
    ./lsp/lsp.nix
    ./lsp/trouble.nix

    ./pluginmanagers/lazy.nix

    ./snippets/luasnip.nix
    ./statusline/lualine.nix

    ./telescope/telescope.nix

    ./ui/alpha.nix
    ./ui/dressing-nvim.nix
    ./ui/indent-blankline.nix
    #./ui/noice.nix
    ./ui/nvim-notify.nix
    ./ui/nui.nix

    #./utils/better-escape.nix
    #./utils/neocord.nix
    ./utils/hardtime.nix
    ./utils/illuminate.nix
    #./utils/mini.nix
    #./utils/neodev.nix
    #./utils/neotest.nix
    ./utils/nvim-autopairs.nix
    ./utils/nvim-colorizer.nix
    ./utils/nvim-surround.nix
    #./utils/oil.nix
    ./utils/persistence.nix
    ./utils/plenary.nix
    ./utils/project-nvim.nix
    #./utils/todo-comments.nix
    ./utils/toggleterm.nix
    ./utils/ultimate-autopair.nix
    ./utils/undotree.nix
    ./utils/whichkey.nix
    ./utils/wilder.nix
  ];
}
