{ ... }:

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableSyntaxHighlighting = true;
    envExtra = builtins.readFile ./zsh.nix.d/env.zsh;
    shellAliases = {
      mux = "tmuxinator";
      pbcopy = "xclip -selection clipboard";
      pbpaste = "xclip -selection clipboard -o";
    };
  };
}
