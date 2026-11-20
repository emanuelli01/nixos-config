{...}: {
  programs.bash.enable = true;

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
    silent = true;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    history.size = 10000;

    shellAliases = {
      nst = "cd /etc/nixos && nvim";
    };

    oh-my-zsh = {
      enable = true;
      theme = "half-life";
    };
  };
}
