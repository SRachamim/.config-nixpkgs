{ ... }:

{
  programs.kitty = {
    enable = true;
    extraConfig = builtins.readFile ./kitty.nix.d/theme.conf;
    font = {
      name = "JetBrainsMono Nerd Font Mono";
    };
    settings = {
      shell = "zsh";
    };
  };
}
