{
  pkgs,
  config,
  lib,
  ...
}: let
  cfg = config.services.emacs;
in {
  services.emacs = {
    enable = true;
  };

  environment.systemPackages = [
    pkgs.emacs-nox
  ];
}
