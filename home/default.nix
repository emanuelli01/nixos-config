{
  pkgs,
  pkgs-unstable,
  ...
}: {
  imports = [
    ./hyprland
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
    pkgs.firefox
    pkgs.spotify
    pkgs.nerd-fonts.jetbrains-mono
    pkgs.wl-clipboard
    pkgs-unstable.claude-code
  ];
}
