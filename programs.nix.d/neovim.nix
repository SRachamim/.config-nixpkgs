{ pkgs, ... }:

{
  imports = [
    ./neovim.nix.d/coc.nix
  ];
  programs.neovim = {
    enable = true;
    extraConfig = builtins.readFile ./neovim.nix.d/rc.vim;
    plugins = with pkgs.vimPlugins; [
      coc-eslint
      {
        config = builtins.readFile ./neovim.nix.d/coc-nvim.vim;
        plugin = coc-nvim;
      }
      coc-json
      coc-tsserver
      {
        config = builtins.readFile ./neovim.nix.d/dracula-vim.vim;
        plugin = dracula-vim;
      }
      {
        config = builtins.readFile ./neovim.nix.d/fzf-vim.vim;
        plugin = fzf-vim;
      }
      {
        config = builtins.readFile ./neovim.nix.d/vim-airline.vim;
        plugin = vim-airline;
      }
      vim-commentary
      vim-devicons
      vim-fugitive
      vim-gitgutter
      vim-highlightedyank
      git-messenger-vim
      vim-polyglot
      vim-repeat
      vim-surround
      vim-unimpaired
    ];
    vimAlias = true;
    vimdiffAlias = true;
  };
}
