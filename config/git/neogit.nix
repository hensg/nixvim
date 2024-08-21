{
  plugins.neogit = {
    enable = true;
    settings.disable_context_highlighting = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>Neogit<CR>";
    }
  ];
}
