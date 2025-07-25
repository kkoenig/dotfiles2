switch:
	nix run .#homeConfigurations.kkoenig.activationPackage

check:
	nix flake check --all-systems
	nix fmt . -- --check --quiet
	nix build .#homeConfigurations.kkoenig.activationPackage
