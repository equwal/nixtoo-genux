{
  description = "Flake setup";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flakey-profile.url = "github:lf-/flakey-profile";
  };

  outputs = { self, nixpkgs, flakey-profile, ... }: 
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      
      packageList = with pkgs; [
        # Add your packages here - one per line
        hello
        firefox
        git
        # zzz automatically added by alias
      ];
    in {
      packages.${system} = {
        default = pkgs.symlinkJoin {
          name = "my-packages";
          paths = packageList;
        };
        
        profile = flakey-profile.lib.mkProfile {
          inherit pkgs;
          paths = packageList;
        };
      };
      
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = packageList;
      };
    };
}