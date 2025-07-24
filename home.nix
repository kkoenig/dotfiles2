{pkgs, ...}: {
  home.username = "kkoenig";
  home.homeDirectory = "/Users/kkoenig";

  # Prevents future breaking changes in Home Manager from affecting local environment
  # think of as a "compatibility mode", does not need to change.
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
}
