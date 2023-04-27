pkgs:
{
    enable = true;
    vimAlias = true;
    vimdiffAlias = true;

    withPython3 = false;
    withRuby = false;

    extraPackages = with pkgs; [
      gopls
      rnix-lsp
      nodePackages.typescript-language-server
      pyright
    ];

    # nix-env -f '<nixpkgs>' -qaP -A vimPlugins
    plugins = with pkgs.vimPlugins; [
      # Git
      vim-gitgutter
      vim-fugitive

      # Color themes/syntax highlighting
      jellybeans-vim
      catppuccin-nvim
      nvim-base16

      rust-vim # Also makes things work like formatting and cargo integration
      vim-nix # nix syntax highlighting
      yuck-vim

      # LSP plugins
      nvim-lspconfig  # Collection of common configurations for the Nvim LSP client
      rust-tools-nvim # To enable more of the features of rust-analyzer, such as inlay hints and more!
      nvim-cmp        # Completion framework
      cmp-buffer      # completion source for buffer words
      cmp-nvim-lsp    # completion source for builtin lsp
      cmp-path        # completion source for paths
      cmp-vsnip       # completion source for snippets
      vim-vsnip       # snippet engine (required...)

      # Diagnostics
      dressing-nvim
      trouble-nvim
      fidget-nvim

      # UI
      fzf-vim
      nvim-tree-lua
      telescope-nvim

      vim-commentary
      vim-easy-align
      (nvim-treesitter.withPlugins (
        plugins: with plugins; [
          nix
          terraform
          python
          rust
          c
          go
          typescript
          javascript
          yuck
      ]))
    ];

    extraConfig =
      ''
        :luafile /home/ubuntu/nix/nvim/init.lua
      '';
}
