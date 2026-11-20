{...}: {
  programs.nvf = {
    enable = true;
    settings.vim = {
      options = {
        tabstop = 2;
        shiftwidth = 2;
        softtabstop = 2;
        expandtab = true;
      };

      clipboard = {
        enable = true;
        registers = "unnamedplus";
        providers.wl-copy.enable = true;
      };

      # theme = {
      #   enable = true;
      #   name = "tokyonight";
      #   style = "night"; # storm, moon, day
      #   transparent = false;
      # };

      visuals.nvim-web-devicons.enable = true;

      lsp = {
        enable = true;
        formatOnSave = true;
      };

      languages.nix = {
        enable = true;
        lsp.enable = true;
        format.enable = true;
        treesitter.enable = true;
      };

      languages.typescript = {
        enable = true;
        lsp.enable = true;
        format.enable = true;
        treesitter.enable = true;
      };

      languages.tsx = {
        enable = true;
        lsp.enable = true;
        format.enable = true;
        treesitter.enable = true;
      };

      utility.snacks-nvim = {
        enable = true;
        setupOpts = {
          explorer.enabled = true;
          picker.enabled = true;
          scroll.enabled = true;
          words.enabled = true;
          terminal.win = {
            wo = {
              winbar = ""; # hides "1: <cwd>"
              statusline = "%#Normal#"; # hides "term://..."
            };
          };
        };
      };

      utility.motion.flash-nvim.enable = true;
      git.gitsigns.enable = true;

      # snacks.lazygit writes its theme to stdpath("cache"), which nvf doesn't create
      luaConfigRC.ensure-cache-dir = ''
        vim.fn.mkdir(vim.fn.stdpath("cache"), "p")
      '';

      keymaps = [
        {
          key = "<leader>e";
          mode = "n";
          action = "<cmd>lua Snacks.explorer()<CR>";
          desc = "Explorer";
        }
        {
          key = "jk";
          mode = "i";
          action = "<Esc>";
          desc = "Exit insert mode";
        }
        {
          key = "<leader>bd";
          mode = "n";
          action = "<cmd>lua Snacks.bufdelete()<CR>";
          desc = "Delete buffer";
        }
        {
          key = "<leader>gg";
          mode = "n";
          action = "<cmd>lua Snacks.lazygit()<CR>";
          desc = "Lazygit";
        }
        {
          key = "<Esc>";
          mode = "n";
          action = "<cmd>nohlsearch<CR>";
          desc = "Clear search highlight";
        }
        {
          key = "<C-t>";
          mode = ["n" "t"];
          action = "<cmd>lua Snacks.terminal.toggle(nil, { win = { height = 0.24 } })<CR>";
          desc = "Toggle terminal";
        }
      ];
    };
  };
}
