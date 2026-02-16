{ ... }:
{
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false;
      upgrade = true;
      cleanup = "zap";
    };

    caskArgs.no_quarantine = true;
    global.brewfile = true;

    # homebrew is best for GUI apps
    # nixpkgs is best for CLI tools
    casks = [
      # OS enhancements
      "aerospace"

      # dev
      "ghostty"
      "zed"
      "figma"
      "blender"

      # messaging
      "signal"

      # other
      "balenaetcher"
      "localsend"
      "firefox@developer-edition"
      "obsidian"
      "proton-pass"
      "protonvpn"
      "spotify"
    ];
    brews = [
      "docker"
      "docker-compose"
      "colima"
    ];
    taps = [
      "nikitabobko/tap"
    ];
  };
}
