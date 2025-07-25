{
  programs.zed-editor = {
    enable = true;

    extensions = [
      "nix"
    ];

    userSettings = {
      telemetry = {
        metrics = false;
      };
      vim_mode = true;
      ui_font_size = 16;
      buffer_font_size = 16;
    };

    # Enable when formatting issue is fixed
    # extraPackages = with pkgs; [
    #   nil
    # ];
  };
}
