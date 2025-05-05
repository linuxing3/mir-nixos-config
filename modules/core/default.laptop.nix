{
  inputs,
  pkgs,
  nixpkgs,
  self,
  username,
  host,
  ...
}: {
  imports = [
    ./bootloader.nix
    ./hardware.nix
    # ./xserver.nix
    ./network.nix
    ./nh.nix
    ./pipewire.nix
    ./program.nix
    ./emacs.nix
    ./security.nix
    ./services.nix
    # ./steam.nix
    ./system.nix
    # ./flatpak.nix
    ./user.laptop.nix
    ./wayland.nix
    # ./virtualization.nix
  ];
  # To prevent getting stuck at shutdown
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [
      rime-data
      librime
      fcitx5-rime
      fcitx5-chinese-addons
      fcitx5-nord
      fcitx5-material-color
    ];
  };
}
