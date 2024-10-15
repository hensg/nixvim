{
  plugins.treesitter = {
    enable = true;
    settings = {
      folding = true;
      auto_install = true;
      hightlight.enable = true;
      nixvimInjections = true;

      # ensure_installed = "all";
      sync_install = false;

      highlight = {
        enable = true;
        additional_vim_regex_highlighting = true;
        disable = [ "rust" ];
        custom_captures = { };
      };
    };
  };
}
