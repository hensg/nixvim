{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "my-plugin";
      src = pkgs.fetchFromGitHub {
        owner = "projekt0n";
        repo = "github-nvim-theme";
        rev = "6b461635230ccb5d0037f378fbe05a27c4ccf7cd";
        hash = "sha256-GoJOeqbBm0b766aZtce/n1Kq2zwbQ4UKRv7qgBlgQE8=";
      };
    })
  ];

  extraConfigLua = ''
    require('github-theme').setup({
      options = {
        dim_inactive = true,
      },
      styles = {
        comments = 'italic',
        functions = 'italic',
      },
    })
    vim.cmd('colorscheme github_dark_high_contrast')
  '';
}
