{ pkgs, ... }: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "monokai-pro";
      src = pkgs.fetchFromGitHub {
        owner = "loctvl842";
        repo = "monokai-pro.nvim";
        rev = "2bad2a92fe0ff6c8581d33a853a1b17592b83239";
        hash = "sha256-kLSA9gO4ocsu083aaGeU2kEdCTO2QhZGeMNOF4sJeU0=";
      };
    })
  ];

  extraConfigLua = ''
    require('monokai-pro').setup({
    })
    --vim.cmd('colorscheme monokai-pro-ristretto')
  '';
}
