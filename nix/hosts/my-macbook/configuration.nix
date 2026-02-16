{
  pkgs,
  primaryUser,
  ...
}:
{
  networking.hostName = "my-macbook";

  # host-specific homebrew casks
  homebrew.casks = [
    # "slack"
  ];

  # host-specific home-manager configuration
  home-manager.users.${primaryUser} = {
    home.packages = with pkgs; [
      graphite-cli
    ];

    programs = {
      zsh = {
        initContent = ''
          # Source shell functions
          source ${./shell-functions.sh}
        '';
      };
      zed-editor = {
        enable = true;
	userSettings = {
	  terminal = {
	    font_family = "FiraCode Nerd Font";
	  };
	  buffer_font_family = "FiraCode Nerd Font";
	};
      };
    };
  };

  launchd.user.agents = {
    # 1. Colima (Docker Runtime)
    colima = {
      command = "${pkgs.colima}/bin/colima start --foreground";
      serviceConfig = {
        KeepAlive = true;
        RunAtLoad = true;
        StandardOutPath = "/tmp/colima.out.log";
        StandardErrorPath = "/tmp/colima.err.log";
      };
    };

    # 2. Proton VPN
    # Note: This just opens the app. You'll want to enable 
    # "Connect on App Launch" inside the Proton VPN App settings.
    protonvpn = {
      command = "/usr/bin/open -a 'Proton VPN'";
      serviceConfig = {
        RunAtLoad = true;
      };
    };
  };
}
