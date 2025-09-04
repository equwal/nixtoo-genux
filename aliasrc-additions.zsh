# nix rebuild alias
alias nix-rebuild='sudo nix run /path/to/your/flake#profile.switch'

# nix package management one-liners
alias nix-install='f(){ sudo sed -i "/# zzz automatically added by alias/i\\        $1" /path/to/your/flake.nix && sudo nix run /path/to/your/flake#profile.switch; }; f'
alias nix-uninstall='f(){ sudo sed -i "/^\s*$1$/d" /path/to/your/flake.nix && sudo nix run /path/to/your/flake#profile.switch; }; f'
alias nix-update='f(){ cd /path/to/your/flake && sudo nix flake update && sudo nix run .#profile.switch; }; f'
alias nix-develop='nix develop /path/to/your/flake'