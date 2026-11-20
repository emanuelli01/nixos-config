{...}: {
  programs.git = {
    enable = true;
    settings = {
      user.name = "Lucca Möller";
      user.email = "emanuellilucca@gmail.com";
      init.defaultBranch = "master";
      pull.rebase = true;
    };
  };

  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
  };

  programs.lazygit = {
    enable = true;
  };
}
