{pkgs, ...}: {
  services = {
    printing.enable = true;
    openssh.enable = true;
    gvfs.enable = true;
    gnome = {
      tinysparql.enable = true;
      gnome-keyring.enable = true;
    };
    dbus.enable = true;
    fstrim.enable = true;

    # needed for GNOME services outside of GNOME Desktop
    dbus.packages = with pkgs; [
      gcr
      gnome-settings-daemon
    ];
  };
  services.logind.extraConfig = ''
    # don’t shutdown when power button is short-pressed
    HandlePowerKey=ignore
  '';

  environment.systemPackages = [
    pkgs.dosfstools
    pkgs.exfat
    pkgs.nfs-utils
    pkgs.btrfs-progs
    pkgs.btrfs-snap
  ];
  services.autofs = {
    enable = true;
    autoMaster = let
      mapConf = pkgs.writeText "autofs.mnt" ''
        windows -fstype=ntfs :/dev/disk/by-partid/5b671066-02
        app -fstype=ntfs :/dev/disk/by-partid/5b671066-03
        data -fstype=ntfs :/dev/disk/by-partid/5b671066-05
      '';
    in ''
      /autofs ${mapConf} --timeout 20
    '';
  };
}
