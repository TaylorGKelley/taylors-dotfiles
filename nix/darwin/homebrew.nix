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
      "cleanshot"
      "hiddenbar"

      # dev
      "ghostty"
      "zed"

      # messaging
      "signal"
      "google-messages"

      # other
      "firefox@developer-edition"
      "obsidian"
      "protonvpn"
      "spotify"
    ];
    brews = [
      "docker"
      "colima"
    ];
    taps = [
      "nikitabobko/tap"
    ];
  };
}
