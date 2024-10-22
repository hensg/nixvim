{
  colorschemes = {
    gruvbox = {
      enable = true;
      settings.terminal_colors = true;
    };
  };
  extraConfigLua = ''
    vim.cmd('set background=light')
  '';
}
