#!/bin/bash
sudo cp flake.nix /nix/var/nix/profiles/per-user/root/flake.nix
sudo nix run /nix/var/nix/profiles/per-user/root#profile.switch
cat aliasrc-additions.zsh >> ~/.config/zsh/aliasrc
source ~/.config/zsh/aliasrc