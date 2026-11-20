{pkgs, ...}: {
  xdg.configFile."hypr/hyprland.lua".source = ./hyprland.lua;

  # Programs used by the binds in hyprland.lua
  home.packages = [
    pkgs.brightnessctl # XF86MonBrightness*
    pkgs.playerctl # XF86Audio{Play,Pause,Next,Prev}
    pkgs.nautilus # SUPER+E
    pkgs.hyprshot # Print
  ];
}
