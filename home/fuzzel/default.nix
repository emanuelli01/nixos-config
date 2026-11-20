{...}: {
  programs.fuzzel = {
    enable = true;

    settings = {
      main = {
        font = "JetBrainsMono Nerd Font:size=12";
        terminal = "kitty";
        prompt = "'  '";
        icons-enabled = true;
        width = 40;
        lines = 10;
        horizontal-pad = 16;
        vertical-pad = 12;
        inner-pad = 8;
      };

      colors = {
        background = "282828f2"; # bg0
        text = "ebdbb2ff"; # fg
        prompt = "fabd2fff"; # yellow
        placeholder = "928374ff"; # gray
        input = "ebdbb2ff"; # fg
        match = "fe8019ff"; # orange
        selection = "504945ff"; # bg2
        selection-text = "fbf1c7ff"; # fg0
        selection-match = "fabd2fff"; # yellow
        counter = "928374ff"; # gray
        border = "d79921ff"; # yellow (dim)
      };

      border = {
        width = 2;
        radius = 10;
      };
    };
  };
}
