# Nix Packages Home Configuration

## Install

1. Instal [cURL]

   This is the only way to fetch the nix installation file.

   ```sh
   sudo apt install curl
   ```

2. Install [Nix]

   Best is to use the [multi-user Nix installation]:

   ```sh
   sh <(curl -L https://nixos.org/nix/install) --daemon
   ```

3. Install [Home Manager]

   Best is to use the [standalone Home Manager installation]:
   
   ```sh
   # Add the appropriate channel
   nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
   nix-channel --update

   # Install
   nix-shell '<home-manager>' -A install

   # Configure Nix in the system
   . "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
   ```

## Upgrade

To upgrade the system, just run [Topgrade], which just upgrades everything:

```sh
topgrade
```

[Home Manager]: https://nix-community.github.io/home-manager/
[Nix]: https://nixos.org/
[Topgrade]: https://github.com/r-darwish/topgrade
[multi-user Nix installation]: https://nixos.org/manual/nix/stable/installation/installing-binary.html#multi-user-installation
[standalone Home Manager installation]: https://nix-community.github.io/home-manager/index.html#sec-install-standalone
