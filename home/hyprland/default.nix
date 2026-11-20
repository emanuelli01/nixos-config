{pkgs, ...}: {
  xdg.configFile."hypr/hyprland.lua".source = ./hyprland.lua;

  # Programs used by the binds in hyprland.lua
  home.packages = [
    pkgs.brightnessctl
    pkgs.playerctl
    pkgs.nautilus
    pkgs.hyprshot
    pkgs.awww # wallpaper daemon
    pkgs.waypaper # wallpaper picker GUI
  ];
}
