{
  pkgs,
  pkgs-unstable,
  ...
}: {
  imports = [
    ./hyprland
    ./hyprlock
    ./kitty
    ./theme
    ./nvim
    ./waybar
    ./fuzzel
    ./git
    ./shell
  ];

  home.stateVersion = "26.05";

  home.packages = [
    pkgs.fd
    pkgs.ripgrep
    pkgs.jq
    pkgs.firefox
    pkgs.spotify
    pkgs.nerd-fonts.jetbrains-mono
    pkgs.wl-clipboard
    pkgs-unstable.claude-code
  ];
}
