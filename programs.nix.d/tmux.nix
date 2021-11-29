{ pkgs, ... }:

{
  programs.tmux = {
    baseIndex = 1;
    enable = true;
    keyMode = "vi";
    plugins = with pkgs.tmuxPlugins; [
      pain-control
      yank
      {
        extraConfig = builtins.readFile ./tmux.nix.d/dracula.tmux.conf;
        plugin = dracula;
      }
    ];
    sensibleOnTop = true;
    terminal = "screen-256color";
    tmuxinator.enable = true;
  };
}
