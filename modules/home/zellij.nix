{pkgs, ...}: {
  programs.zellij = {
    enable = true;
    extraConfig = ''
    '';
  };

  home.file."./config/zellij/config.kdl".source = ./config.kdl;
}
