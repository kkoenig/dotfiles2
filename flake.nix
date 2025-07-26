{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    flake-utils.url = "github:numtide/flake-utils";
    catppuccin.url = "github:catppuccin/nix";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    flake-utils,
    home-manager,
    catppuccin,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {inherit system;};
      in {
        formatter = pkgs.alejandra;

        legacyPackages = {
          homeConfigurations = {
            "kkoenig" = home-manager.lib.homeManagerConfiguration {
              inherit pkgs;

              modules = [
                ./home.nix
                ./home/git.nix
                ./home/ghostty.nix
                ./home/zed.nix
                catppuccin.homeModules.catppuccin
              ];
            };
          };
        };
      }
    );
}
