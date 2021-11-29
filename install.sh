#! /usr/bin/env nix-shell
#! nix-shell -i bash -p git

# Add the appropriate channels
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update

# Open GL
nix-channel --add https://github.com/guibou/nixGL/archive/main.tar.gz nixgl && nix-channel --update
nix-env -iA nixgl.auto.nixGLDefault   # or replace `nixGLDefault` with your desired wrapper


# Activate
export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH

# Install
nix-shell '<home-manager>' -A install

# Configure Nix in the system
. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"

# clone repository
rm -rf ~/.config/nixpkgs
git clone https://github.com/SRachamim/.config-nixpkgs ~/.config/nixpkgs

# activate home-manager
home-manager switch

# upgrade everything else
topgrade
