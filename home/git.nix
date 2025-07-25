{
  programs.git = {
    enable = true;
    userName = "Killian Koenig";
    userEmail = "killiankoenig@gmail.com";

    delta = {
      enable = true;
      options = {
        side-by-side = true;
        line-numbers = true;
        navigate = true;
        light = false;
      };
    };

    ignores = [
      ".direnv"
      ".DS_Store"
      "*.swp"
      "*.swo"
      "*~"
    ];

    extraConfig = {
      init = {
        defaultBranch = "main";
      };
      core = {
        editor = "vim";
        autocrlf = false;
      };
      diff = {
        tool = "vimdiff";
      };
      difftool = {
        prompt = false;
      };
      pull = {
        rebase = true;
      };
      push = {
        autoSetupRemote = true;
      };
      branch = {
        autoSetupRebase = "always";
      };
    };
  };
}
