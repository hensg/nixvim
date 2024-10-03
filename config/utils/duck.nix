{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "duck";
      src = pkgs.fetchFromGitHub {
        owner = "tamton-aquib";
        repo = "duck.nvim";
        rev = "d8a6b08af440e5a0e2b3b357e2f78bb1883272cd";
        hash = "sha256-97QSkZHpHLq1XyLNhPz88i9VuWy6ux7ZFNJx/g44K2A=";
      };
    })
  ];

  extraConfigLua = ''
    require('duck').setup({})
  '';
}
