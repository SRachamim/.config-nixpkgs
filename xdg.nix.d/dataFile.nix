{ ... }:

{
  xdg.dataFile = {
    "xsessions-xmonad.desktop" = {
      executable = true;
      source = ./dataFile.nix.d/xsessions-xmonad.desktop;
      target = "xsessions/xmonad.desktop";
    };
  };
}
