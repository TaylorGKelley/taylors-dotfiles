{ pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      # dev tools
      curl
      neovim
      tmux
      htop
      tree
      ripgrep
      gh
      zoxide
      postman
      claude-code

      # programming languages
      nodejs
      pnpm

      # misc
      nil
      biome
      nixfmt-rfc-style
      yt-dlp
      ffmpeg
      ollama

      # fonts
      nerd-fonts.fira-code
      nerd-fonts.fira-mono
    ];
  };
}
