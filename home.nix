{ config, pkgs, ... }:
let
    customNeovim = import "/home/$USER/nix/vim.nix";
in
{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "$USER";
  home.homeDirectory = "/home/$USER";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.git.enable = true;
  programs.neovim = customNeovim pkgs;
  xdg.configFile.nvim = {
    source = /home/$USER/nix/nvim;
    recursive = true;
  };
}
