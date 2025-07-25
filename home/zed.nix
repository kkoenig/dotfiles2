{pkgs, ...}: {
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
      buffer_font_family = "FiraCode Nerd Font";

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

      languages = {
        # https://github.com/zed-extensions/nix
        Nix = {
          language_servers = [
            "nil"
            "!nixd"
          ];
          formatter = {
            external = {
              command = "alejandra";
              arguments = ["--quiet" "--"];
            };
          };
        };
      };
    };

    extraPackages = with pkgs; [
      nil
      alejandra
    ];
  };
}
