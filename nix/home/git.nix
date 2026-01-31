{ primaryUser, ... }:
{
  programs.git = {
    enable = true;
    userName = "TaylorGKelley";
    userEmail = "taylorgkelley04@gmail.com";

    lfs.enable = true;

    ignores = [ "**/.DS_STORE" ];

    extraConfig = {
      github = {
        user = primaryUser;
      };
      init = {
        defaultBranch = "main";
      };
    };
  };
}
