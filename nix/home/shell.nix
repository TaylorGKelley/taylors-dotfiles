_: {
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
    settings = {
      "__include" = [ (builtins.fromTOML (builtins.readFile (pkgs.fetchurl {
        url = "https://starship.rs/presets/toml/nerd-font-symbols.toml";
        sha256 = "sha256-YOUR_HASH_HERE"; # Nix will error and give you the correct hash
      }))) ];
    };
  };
}
