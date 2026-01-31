{ pkgs, ... }: 
let
  nerdFontSymbols = builtins.fromTOML (builtins.readFile "${pkgs.starship.src}/docs/public/presets/toml/nerd-font-symbols.toml");
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
