{pkgs, ...}: {
  #extraPlugins = [
  #  (pkgs.vimUtils.buildVimPlugin {
  #    name = "my-plugin";
  #    src = pkgs.fetchFromGitHub {
  #      owner = "mellow-theme";
  #      repo = "mellow.nvim";
  #      rev = "5c8b4eaadf190f646f201322f96f00140b6b1a0b";
  #      hash = "sha256-u5kbrfqgtJLYuEoRd0JNhj9wKWBWZIRCTbRt6vvBQs4=";
  #    };
  #  })
  #];

  #extraConfigLua = ''
  #  vim.g.mellow_italic_keywords = false
  #  vim.g.mellow_italic_functions = false
  #  vim.g.mellow_bold_functions = false

  #  vim.cmd('colorscheme mellow')
  #'';
}
