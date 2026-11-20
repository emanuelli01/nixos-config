{...}: {
  programs.kitty = {
    enable = true;

    font = {
      name = "JetBrainsMono Nerd Font";
    };

    themeFile = "gruvbox-dark";

    settings = {
      background = "#100F0E";
      background_opacity = "0.95";
      window_padding_width = 2;

      tab_bar_edge = "top";
      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";
      tab_bar_min_tabs = 2;
      tab_title_template = "{index}: {title}";

      tab_bar_background = "#1d2021";
      active_tab_foreground = "#282828";
      active_tab_background = "#fabd2f";
      active_tab_font_style = "bold";
      inactive_tab_foreground = "#a89984";
      inactive_tab_background = "#3c3836";
      inactive_tab_font_style = "normal";
    };

    keybindings = {
      "ctrl+shift+h" = "neighboring_window left";
      "ctrl+shift+j" = "neighboring_window down";
      "ctrl+shift+k" = "neighboring_window up";
      "ctrl+shift+l" = "neighboring_window right";
      "ctrl+shift+enter" = "launch --location=hsplit --cwd=current";
      "ctrl+shift+f" = "toggle_layout stack";
      "alt+h" = "previous_tab";
      "alt+l" = "next_tab";
    };

    extraConfig = '''';
  };
}
