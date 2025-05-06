{pkgs, ...}: {
  programs = {
    zellij = {
      enable = true;

      attachExistingSession = true;
      exitShellOnExit = true;

      enableZshIntegration = true;
      enableFishIntegration = true;
      enableBashIntegration = true;
    };
  };

  home.file."./config/zellij/config.kdl".source = ./config.kdl;
}
