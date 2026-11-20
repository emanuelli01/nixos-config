{...}: {
  programs.hyprlock = {
    enable = true;

    # Gruvbox dark
    settings = {
      general = {
        hide_cursor = true;
        grace = 0;
      };

      background = [
        {
          path = "screenshot";
          blur_passes = 3;
          blur_size = 8;
        }
      ];

      input-field = [
        {
          size = "300, 50";
          position = "0, -80";
          halign = "center";
          valign = "center";
          outline_thickness = 2;
          rounding = 10;
          dots_center = true;
          fade_on_empty = false;
          font_color = "rgb(ebdbb2)"; # fg
          inner_color = "rgba(282828ee)"; # bg0
          outer_color = "rgb(504945)"; # bg2
          check_color = "rgb(fabd2f)"; # yellow
          fail_color = "rgb(fb4934)"; # red
          placeholder_text = "<span foreground=\"##928374\">password</span>";
        }
      ];

      label = [
        {
          text = "$TIME";
          font_family = "JetBrainsMono Nerd Font";
          font_size = 64;
          color = "rgb(fabd2f)"; # yellow
          position = "0, 80";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };
}
