# Nix package manager on another OS (no nix-env). 100% Declarative setup.

![Nixtoo Genux logo](https://therealtruex.com/static/nixtoogenux-smaller.webp)

Including Gentoo of course. Nixtoo Genux!

![Is this tomorrow: america under nix!](https://therealtruex.com/static/nixamerica-smaller.webp)

## Files:

1. `flake.nix`: Put packages here. Includes a dev shell and flakey.
2. `aliasrc-additions.zsh`:  Aliases to make it easier to use the setup. Very mandatory.
3. `INSTALL.sh`: Installs this setup. Install it after installing
the multi-user installation of nix from the [official website using curl into shell](https://nixos.org/download/) or
(for Gentoo) from`sys-apps/nix` from [Trofi's nix-guix-gentoo
overlay](https://github.com/trofi/nix-guix-gentoo)

## Aliases:
`nix-install <package>`: Add a package to the file (uses sed) and rebuild.
`nix-uninstall <package>`: Remove a package from the file (uses sed) and rebuild.
`nix-update`: Update and rebuild the system.
`nix-rebuild`: Rebuild the system but don't update.
`nix-develop`: Makes a nix dev shell for the system. Redundant when using flakey (default).
