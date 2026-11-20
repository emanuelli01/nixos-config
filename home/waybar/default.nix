{pkgs, ...}: {
  home.packages = [pkgs.pavucontrol];

  programs.waybar = {
    enable = true;

    settings.mainBar = {
      layer = "top";
      position = "top";
      height = 30;
      margin-top = 6;
      margin-left = 10;
      margin-right = 10;
      spacing = 6;

      modules-left = ["hyprland/workspaces" "hyprland/window"];
      modules-center = ["clock"];
      modules-right = ["pulseaudio" "network" "cpu" "memory" "battery" "tray"];

      "hyprland/workspaces" = {
        format = "{id}";
        on-scroll-up = "hyprctl dispatch workspace e+1";
        on-scroll-down = "hyprctl dispatch workspace e-1";
      };

      "hyprland/window" = {
        max-length = 50;
        separate-outputs = true;
      };

      clock = {
        format = "{:%H:%M}";
        format-alt = "{:%a, %d %b  %H:%M}";
        tooltip-format = "<tt>{calendar}</tt>";
      };

      pulseaudio = {
        format = "{icon} {volume}%";
        format-muted = "󰝟 muted";
        format-icons.default = ["󰕿" "󰖀" "󰕾"];
        on-click = "pavucontrol";
      };

      network = {
        format-wifi = "󰖩 {essid}";
        format-ethernet = "󰈀 wired";
        format-disconnected = "󰖪 off";
        tooltip-format = "{ifname} {ipaddr}";
      };

      cpu = {
        format = " {usage}%";
        interval = 5;
      };

      memory = {
        format = " {percentage}%";
        interval = 5;
      };

      battery = {
        states = {
          warning = 25;
          critical = 10;
        };
        format = "{icon} {capacity}%";
        format-charging = "󰂄 {capacity}%";
        format-icons = ["󰁺" "󰁼" "󰁾" "󰂀" "󰁹"];
      };

      tray.spacing = 8;
    };

    # Gruvbox dark
    style = ''
      @define-color bg0    #282828;
      @define-color bg1    #3c3836;
      @define-color bg2    #504945;
      @define-color fg     #ebdbb2;
      @define-color gray   #928374;
      @define-color red    #fb4934;
      @define-color green  #b8bb26;
      @define-color yellow #fabd2f;
      @define-color blue   #83a598;
      @define-color purple #d3869b;
      @define-color aqua   #8ec07c;
      @define-color orange #fe8019;

      * {
        font-family: "JetBrainsMono Nerd Font";
        font-size: 13px;
        min-height: 0;
      }

      window#waybar {
        background: alpha(@bg0, 0.92);
        color: @fg;
        border: 2px solid @bg2;
        border-radius: 10px;
      }

      #workspaces button {
        padding: 0 8px;
        color: @gray;
        border-radius: 8px;
      }

      #workspaces button.active {
        color: @bg0;
        background: @yellow;
      }

      #workspaces button.urgent {
        color: @bg0;
        background: @red;
      }

      #workspaces button:hover {
        color: @fg;
        background: @bg1;
        box-shadow: none;
      }

      #window, #clock, #pulseaudio, #network, #cpu, #memory, #battery, #tray {
        padding: 0 10px;
      }

      #clock      { color: @yellow; font-weight: bold; }
      #pulseaudio { color: @blue; }
      #network    { color: @aqua; }
      #cpu        { color: @orange; }
      #memory     { color: @purple; }
      #battery    { color: @green; }

      #battery.warning { color: @yellow; }
      #battery.critical:not(.charging) { color: @red; }
      #pulseaudio.muted { color: @gray; }
      #network.disconnected { color: @red; }
    '';
  };
}
