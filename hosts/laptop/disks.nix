{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}: {
  fileSystems."/" = {
    device = "/dev/disk/by-uuid/361434b5-c39b-4bf0-9fc0-956e8a4e5f5b";
    fsType = "ext4";
  };
  swapDevices = [
    {device = "/dev/disk/by-uuid/f033c305-e649-4599-aa05-ccf352da4121";}
  ];
}
