{ pkgs, ... }: 
let
  nerdFontSymbols = builtins.fromTOML (builtins.readFile (pkgs.fetchurl {
    url = "https://starship.rs/presets/toml/nerd-font-symbols.toml";
    hash = "sha256-zxXDmI6V6wwKeoifF1+qC9s0tIQKHaF2ZyX7RvP0Fzg=";
  }));
in
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      la = "ls -la";
      ".." = "cd ..";
      "nix-switch" = "sudo darwin-rebuild switch --flake ~/.config/nix";
    };
  };

  programs.starship = {
    enable = true;
    settings = nerdFontSymbols;
  };
}
