{ ... }:

{
  imports = [
    ./xdg.nix.d/dataFile.nix
  ];
  xdg = {
    enable = true;
    mime = {
      enable = true;
    };
  };
}
