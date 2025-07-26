{pkgs, ...}: {
  home.username = "kkoenig";
  home.homeDirectory = "/Users/kkoenig";

  # Prevents future breaking changes in Home Manager from affecting local environment
  # think of as a "compatibility mode", does not need to change.
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;

  fonts.fontconfig.enable = true;

  catppuccin = {
    enable = true;
    flavor = "mocha";
  };

  home.packages = with pkgs; [
    # Fonts
    nerd-fonts.fira-code

    # Language Servers
    nil # nix
    alejandra # formatter used by nix language server
  ];
}
