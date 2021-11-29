# Home Configuration at FundGuard

![Logo](./assets/logo.svg)

Provision a machine to work on the Client team at [FundGuard].

Tested on:

- Fedora
- Ubuntu
- macOS

## Install

1. Configure the system

   ```sh
   sh <(curl -L https://raw.githubusercontent.com/SRachamim/.config-nixpkgs/main/configure/fedora.sh)

   reboot
   ```

2. Install [Nix]

   Best is to use the [multi-user Nix installation]:

   ```sh
   sh <(curl -L https://nixos.org/nix/install) --daemon
   ```

   Open a new terminal and configure the Nix packages channel to use:

   ```sh
   nix-channel --add https://nixos.org/channels/nixpkgs-unstable
   nix-channel --update
   ```

3. Install [Home Manager] and apply to the system

   Best is to use the automatic script:

   ```sh
   sh <(curl -L https://raw.githubusercontent.com/SRachamim/.config-nixpkgs/main/install.sh)
   ```

## Upgrade

To upgrade the system, just run [Topgrade], which just upgrades everything:

```sh
topgrade
```

## What it does

- [x] _Ubuntu_
    - [x] Upgrade drivers
- [x] [FundGuard]
    - [x] Install [BitDefender]
    - [x] Install [JumpCloud]
    - [x] Client team
      - [x] Configure SSH to use with [Azure DevOps Server]
      - [x] Install [Git]
      - [x] Install [Volta] and configure it
- [x] Personal
    - [x] Install packages
      - [x] Install [Google Chrome]
      - [x] Install [Nerd Fonts] and configure it
      - [x] Install [Spotify]
      - [x] Install [ripgrep] and integegrate it with [fzf]
      - [x] Install [scrot]
      - [x] Install [xclip] and set `pbcopy` and `pbpaste` aliases
    - [x] Install programs
      - [x] Install [Atuin] and set it as the default search history program
      - [x] Install [Broot]
      - [x] Install [LSD] and alias it to `ls`
      - [x] Install [Neovim]
          - [x] Install [Coc] and configure it
          - [x] Install [Dracula for Vim] and set it as the default theme
          - [x] Install [Polyglot] and configure it
          - [x] Install [Surround.vim]
          - [x] Install [Tsserver for Coc] and configure it
          - [x] Install [VimDevIcons] and confiture it
          - [x] Install [coc-eslint] and configure it
          - [x] Install [commentary.vim] and confiture it
          - [x] Install [fugitive.vim]
          - [x] Install [fzf for vim] and confiture it
          - [x] Install [git-messenger.vim]
          - [x] Install [repeat.vim]
          - [x] Install [unimpaired.vim]
          - [x] Install [vim-airline] and set it as the default status bar
          - [x] Install [vim-gitgutter]
          - [x] Install [vim-highlightedyank]
          - [x] Install `coc-json`
      - [x] Install [Rofi] and configure it with [xmonad]
      - [x] Install [Tmuxinator] and configure _FundGuard_ workspace
      - [x] Install [Topgrade]
      - [x] Install [Zsh] and set it as the default shell
      - [x] Install [bat] and set it as default  viewer
      - [x] Install [fzf] and integrate with [Zsh]
      - [x] Install [kitty] and set the Dracula theme
      - [x] Install [ncspot]
      - [x] Install [starship] and configure it
      - [x] Install [tmux]
      - [x] Install [xmobar] and configure it with [xmonad]
      - [x] Install [xmonad]

[Atuin]: https://github.com/ellie/atuin
[Azure DevOps Server]: https://azure.microsoft.com/en-us/services/devops/
[BitDefender]: https://www.bitdefender.com/
[Broot]: https://dystroy.org/broot/
[Coc]: https://github.com/neoclide/coc.nvim/
[Dracula for Vim]: https://github.com/dracula/vim/
[FundGuard]: https://www.fundguard.com/
[Git]: https://git-scm.com/
[Google Chrome]: https://www.google.com/chrome/browser/
[Home Manager]: https://nix-community.github.io/home-manager/
[JumpCloud]: https://jumpcloud.com/
[LSD]: https://github.com/Peltoche/lsd
[Neovim]: https://neovim.io/
[Nerd Fonts]: https://www.nerdfonts.com/
[Nix]: https://nixos.org/
[Polyglot]: https://github.com/sheerun/vim-polyglot/
[Rofi]: https://github.com/davatorium/rofi
[Spotify]: https://www.spotify.com/il-en/
[Surround.vim]: https://github.com/tpope/vim-surround/
[Tmuxinator]: https://github.com/tmuxinator/tmuxinator
[Topgrade]: https://github.com/r-darwish/topgrade
[Tsserver for Coc]: https://github.com/neoclide/coc-tsserver#readme
[VimDevIcons]: https://github.com/ryanoasis/vim-devicons/
[Volta]: https://volta.sh/
[Zsh]: https://www.zsh.org/
[coc-eslint]: https://github.com/neoclide/coc-eslint#readme
[commentary.vim]: https://github.com/tpope/vim-commentary/
[fugitive.vim]: https://github.com/tpope/vim-fugitive/
[fzf for vim]: https://github.com/junegunn/fzf.vim/
[fzf]: https://github.com/junegunn/fzf
[git-messenger.vim]: https://github.com/rhysd/git-messenger.vim/
[kitty]: https://github.com/kovidgoyal/kitty
[multi-user Nix installation]: https://nixos.org/manual/nix/stable/installation/installing-binary.html#multi-user-installation
[ncspot]: https://github.com/hrkfdn/ncspot
[repeat.vim]: https://github.com/tpope/vim-repeat/
[ripgrep]: https://github.com/BurntSushi/ripgrep
[scrot]: https://github.com/resurrecting-open-source-projects/scrot
[starship]: https://starship.rs/
[tmux]: https://github.com/tmux/tmux/wiki
[unimpaired.vim]: https://github.com/tpope/vim-unimpaired/
[vim-airline]: https://github.com/vim-airline/vim-airline/
[vim-gitgutter]: https://github.com/airblade/vim-gitgutter/
[vim-highlightedyank]: https://github.com/machakann/vim-highlightedyank/
[xclip]: https://github.com/astrand/xclip
[xmobar]: https://hackage.haskell.org/package/xmobar
[xmonad]: https://hackage.haskell.org/package/xmonad
