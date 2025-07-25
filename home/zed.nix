{
  programs.zed-editor = {
    enable = true;

    extensions = [
      "nix"
      "catppuccin"
      "catppuccin-icons"
    ];

    userSettings = {
      telemetry = {
        metrics = false;
      };
      vim_mode = true;
      ui_font_size = 16;
      buffer_font_size = 16;
      theme = {
        light = "Catppuccin Mocha";
        dark = "Catppuccin Mocha";
        mode = "system";
      };
      icon_theme = "Catppuccin Mocha";

      agent = {
        default_model = {
          provider = "anthropic";
          model = "claude-sonnet-4-latest";
        };
      };
    };

    # Enable when formatting issue is fixed
    # extraPackages = with pkgs; [
    #   nil
    # ];
  };
}
