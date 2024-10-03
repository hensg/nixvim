{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "ultimate-autopair.nvim";
      version = "2024-02-05";
      src = pkgs.fetchFromGitHub {
        owner = "altermo";
        repo = "ultimate-autopair.nvim";
        rev = "53ed7c65e466963c916251f9ce6df7dd3685dc36";
        sha256 = "t51hB9ZjpOdhdOItXpf+dpvCZsdKpustSUiXS3UIwdY=";
      };
    })
  ];
  extraConfigLua = ''
    require('ultimate-autopair').setup()
  '';
}
