{ ... }:

{
  imports = [
    ./xsession.nix.d/windowManager.nix
  ];
  xsession = {
    enable = true;
  };
}
